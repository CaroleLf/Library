<?php

namespace App\Controller;

use App\Entity\Book;
use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use OpenApi\Annotations as OA;
use App\Repository\BookRepository;
use App\Repository\BorrowRepository;
use App\Repository\FavoriteRepository;
use App\Repository\ReviewRepository;
use FOS\RestBundle\Controller\Annotations\View;
use Nelmio\ApiDocBundle\Annotation\Security;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Security\Http\Attribute\IsGranted;

/**
 * @OA\Tag(name="Books")
 */
#[Route('/api/books', name: 'app_api')]
class ApiBooksController extends AbstractController
{
    /**
     * Get a list of books from the library
     *
     * @OA\Parameter(
     *     name="author",
     *     in="query",
     *     description="Author of book to find",
     *     required=true,
     *     @OA\Schema(type="string")
     * )
     * @OA\Parameter(
     *     name="maxResults",
     *     in="query",
     *     description="Set the max number of results",
     *     required=false,
     *     @OA\Schema(type="integer")
     * )
     * @OA\Parameter(
     *     name="offset",
     *     in="query",
     *     description="Set the offset",
     *     required=false,
     *     @OA\Schema(type="integer")
     * )
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-books"
     *     )
     * )
     * @OA\Response(
     *     response="400",
     *     description="Bad Request missing author"
     * )
     */
    #[View(serializerGroups: ['get-books'])]
    #[Route('', name: 'app_api_get_books', methods: ['GET'])]
    public function apiGetBooks(Request $request, BookRepository $bookRepository)
    {
        if (!$request->query->has('author')) {
            return new JsonResponse(['error' => 'Bad Request missing author'], 400);
        }

        $author = '%' . $request->query->get('author') . '%';

        $books = $bookRepository->findByAuthor(
            $author,
            $request->query->get('offset', 0),
            intval($request->query->get('maxResults', 10))
        );

        $books_count = $bookRepository->findCountByAuthor($author);

        return [
            'results' => $books_count,
            'books' => $books
        ];
    }

    /**
     * Get the 4 latest acquisitions from the library
     *
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-books-latest"
     *     )
     * )
     */
    #[View(serializerGroups: ['get-books'])]
    #[Route('/latest', name: 'app_api_get_books_latest', methods: ['GET'])]
    public function apiGetBooksLatest(BookRepository $bookRepository)
    {
        $books = $bookRepository->findLatestAcquisition(4);

        return [
            'books' => $books
        ];
    }

    /**
     * Get all books
     *
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-books"
     *     )
     * )
     */
    #[View(serializerGroups: ["book_infos"])]
    #[Route('/all', name: 'app_api_get_all_books', methods:'GET')]
    public function getAllBooks(BookRepository $bookRepository): array
    {
        $books = $bookRepository->findAll();
        $books_count = $bookRepository->count([]);

        return [
            'results' => $books_count,
            'books' => $books
        ];
    }

    /**
     * Get the list of books marked as favorite by the library
     *
     * @OA\Parameter(
     *     name="maxResults",
     *     in="query",
     *     description="Max results",
     *     required=false,
     *     @OA\Schema(type="integer"),
     *     example=5
     * )
     * @OA\Parameter(
     *     name="offset",
     *     in="query",
     *     description="Offset",
     *     required=false,
     *     @OA\Schema(type="integer"),
     *     example=0
     * )
     * @OA\Response(
     *    response=200,
     *   description="Success",
     *  @OA\JsonContent(ref="#/components/schemas/get-favorites")
     * )
     */
    #[View(serializerGroups: ['get-favorite','get-books'])]
    #[Route('/favorite', name: 'app_api_favorite_books', methods: ['GET'])]
    public function favoriteBook(Request $request, favoriteRepository $repo)
    {
        $favorites = $repo->findFavorite(
            $request->query->get('offset', 0),
            intval($request->query->get('maxResults', 4))
        );

        return [
            'favorites' => $favorites
        ];
    }

    /**
     * Get a list of suggested books based on the current user's preferences
     *
     * @OA\Response(
     *     response=200,
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-suggestion-books"
     *     )
     * )
     */
    #[View(serializerGroups: ['get-books'])]
    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[Route('/suggestion', name: 'app_api_get_books/suggestion', methods: ['GET'])]
    public function getSuggestionBooks(
        BookRepository $bookRepository,
        BorrowRepository $borrowRepository,
        FavoriteRepository $favoriteRepository,
        ReviewRepository $reviewRepository
    ): array {
        // Get the current user
        $user = $this->getUser();

        // Get the books the user has already borrowed
        $borrows = $user->getBorrows()->map(function ($borrow) {
            return $borrow->getBook();
        });

        // Get all the books
        $books = $bookRepository->findAll();

        // Calculate the score for each book
        $scores = [];
        foreach ($books as $book) {
            if (!$borrows->contains($book)) {
                $score = 0;
                $score += $this->calculateScore(
                    $book,
                    $user,
                    $borrowRepository,
                    $favoriteRepository,
                    $reviewRepository
                );
                $scores[$book->getId()] = ['book' => $book, 'score' => $score];
            }
        }

        // Sort the books by score
        usort($scores, function ($a, $b) {
            return $b['score'] - $a['score'];
        });

        // Get the top 4 books
        $topBooks = array_slice($scores, 0, 4);

        // Extract the book and score from the array
        $topBooks = array_map(function ($item) {
            return [ 'score' => $item['score'], 'book' => $item['book']];
        }, $topBooks);

        // Return the top 4 books
        return [
            'books' => $topBooks
        ];
    }
    /**
     * This function calculates a score for a book based on whether the user has already read book
     * with the sames categories, whether the user's friends have read it, whether the libary has
     * favorited it, the average rating of the book and a random number.
     *
     * @param Book book The book you want to calculate the score for.
     * @param User user The user who is currently logged in
     * @param BorrowRepository borrowRepository The repository of the borrow table
     * @param FavoriteRepository favoriteRepository The repository of the favorite table
     * @param ReviewRepository reviewRepository The repository for the review table
     *
     * @return int The score of the book.
     */
    private function calculateScore(
        Book $book,
        User $user,
        BorrowRepository $borrowRepository,
        FavoriteRepository $favoriteRepository,
        ReviewRepository $reviewRepository
    ): int {
        $score = 0;
        $score += $this->scoreByAlreadyRead($book, $user, $borrowRepository) ?? 0;
        $score += $this->scoreByFollowAlreadyRead($book, $user, $borrowRepository) ?? 0;
        $score += rand(0, 20);
        $score += $this->scoreByFavorite($book, $favoriteRepository) ?? 0;
        $score += $this->scoreByReview($book, $reviewRepository) ?? 0;
        return $score;
    }

    /**
     * It returns a score between 0 and 20 base average of all the reviews of a book multiplied
     * by 4
     *
     * @param Book book The book we want to calculate the score for
     * @param ReviewRepository reviewRepository The repository of the Review entity.
     *
     * @return float The average of the notes of the reviews of the book.
     */
    private function scoreByReview(Book $book, ReviewRepository $reviewRepository): float
    {
        $review_avg = $reviewRepository->createQueryBuilder('r')
            ->select('AVG(r.note)')
            ->where('r.book = :book')
            ->setParameter('book', $book)
            ->getQuery()
            ->getSingleScalarResult();
        return $review_avg * 4;
    }

    /**
     * If the book is a library favorite, return 10, otherwise return 0
     *
     * @param Book book The book we're scoring
     * @param FavoriteRepository favoriteRepository The repository for the Favorite entity.
     *
     * @return int The score of the book.
     */
    private function scoreByFavorite(Book $book, FavoriteRepository $favoriteRepository): int
    {
        if ($favoriteRepository->findOneBy(['book' => $book])) {
            return 10;
        }
        return 0;
    }

    /**
     * It returns a score between 0 and 30 based on how many of the user's followers have already read
     * the book
     *
     * @param Book book The book we're scoring
     * @param User user The user for whom we're calculating the score
     * @param BorrowRepository borrowRepository The repository for the Borrow entity.
     *
     * @return float The score is being returned.
     */
    private function scoreByFollowAlreadyRead(Book $book, User $user, BorrowRepository $borrowRepository): float
    {
        $followAlreadyReadCount = $borrowRepository->createQueryBuilder('b')
            ->select('COUNT(DISTINCT b.id)')
            ->where('b.user IN (:follows)')
            ->andWhere('b.book = :book')
            ->setParameter('follows', $user->getFollowing())
            ->setParameter('book', $book->getId())
            ->getQuery()
            ->getSingleScalarResult();

        $result = $followAlreadyReadCount / $user->getFollowing()->count();
        return $result * 30;
    }

    /**
     * It returns a score between 0 and 20 based on how many book of the same category the user has
     * already read
     *
     * @param Book book The book we want to calculate the score for
     * @param User user The user who is currently logged in
     * @param BorrowRepository borrowRepository The repository of the borrow entity.
     *
     * @return float The score of the book based on the user's previous borrows.
     */
    private function scoreByAlreadyRead(Book $book, User $user, BorrowRepository $borrowRepository): float
    {
        $borrowCount = $borrowRepository->createQueryBuilder('b')
            ->select('COUNT(b)')
            ->join('b.book', 'book')
            ->join('book.categories', 'category')
            ->where('b.user = :user')
            ->andWhere('category = :category')
            ->setParameter('user', $user)
            ->setParameter('category', $book->getCategories()->first())
            ->getQuery()
            ->getSingleScalarResult();

        $result = $borrowCount / $user->getBorrows()->count();
        return $result * 20;
    }
}
