<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use OpenApi\Annotations as OA;
use App\Repository\BookRepository;
use FOS\RestBundle\Controller\Annotations\View;
use Symfony\Component\HttpFoundation\JsonResponse;

/**
 * @OA\Tag(name="Book")
 */
#[Route('/api/book', name: 'app_api')]
class ApiBookController extends AbstractController
{
    /**
     * Get informations of a specific book
     *
     * @OA\Parameter(
     *     name="id",
     *     in="path",
     *     description="Id of the book",
     *     required=true,
     *     @OA\Schema(type="integer")
     * )
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-book"
     *     )
     * )
     * @OA\Response(
     *     response="400",
     *     description="Bad Request"
     * )
     */
    #[View(serializerGroups: ["book_infos"])]
    #[Route('/{id}', name: 'app_api_get_book', methods:'GET')]
    public function apiGetBook(Request $request, BookRepository $repository)
    {
        if (!$request->attributes->has('id')) {
            return new JsonResponse(['error' => 'Bad Request missing id'], 400);
        }

        $book_id = $request->attributes->get('id');
        $book = $repository->findOneBy(array('id' => $book_id));

        return [
            'book' => $book
        ];
    }
}
