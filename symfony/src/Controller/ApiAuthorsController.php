<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use OpenApi\Annotations as OA;
use App\Repository\AuthorRepository;
use FOS\RestBundle\Controller\Annotations\View;
use Symfony\Component\HttpFoundation\JsonResponse;

/**
 * @OA\Tag(name="Authors")
 */
#[Route('/api/authors', name: 'app_api')]
class ApiAuthorsController extends AbstractController
{
    /**
     * Get a list of authors
     *
     * @OA\Parameter(
     *     name="q",
     *     in="query",
     *     description="Extract from the author's name",
     *     required=true,
     *     @OA\Schema(type="string"),
     *     example="J.K. Row"
     * )
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-authors"
     *     )
     * )
     * @OA\Response(
     *     response="400",
     *     description="Bad Request missing q"
     * )
     */
    #[View(serializerGroups: ['get-authors'])]
    #[Route('', name: 'app_api_get_authors', methods:'GET')]
    public function apiGetAuthors(AuthorRepository $authorRepository, Request $request)
    {
        if (!$request->query->has('q') || $request->query->get('q') === '') {
            return new JsonResponse(['error' => 'Bad Request missing q'], 400);
        }

        $author = $request->query->get('q');
        $authors = $authorRepository->findByName($author);

        return [
            'authors' => $authors
        ];
    }

     /**
     * Get all authors
     *
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-all-authors"
     *     )
     * )
     */
    #[View(serializerGroups: ["get-authors"])]
    #[Route('/all', name: 'app_api_get_all_authors', methods:'GET')]
    public function getAllAuthors(AuthorRepository $repository): array
    {
        $authors = $repository->findAll();
        $authors_count = $repository->count([]);

        return [
            'results' => $authors_count,
            'authors' => $authors
        ];
    }
}
