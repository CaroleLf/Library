<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use OpenApi\Annotations as OA;
use App\Repository\BorrowRepository;
use FOS\RestBundle\Controller\Annotations\View;
use Nelmio\ApiDocBundle\Annotation\Security;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Security\Http\Attribute\IsGranted;

/**
 * @OA\Tag(name="Borrows")
 */
#[Route('/api/borrows', name: 'app_api_borrow')]
class ApiBorrowsController extends AbstractController
{
    /**
     * Get all borrows of the current user
     *
     * @OA\Parameter(
     *     name="maxResults",
     *     in="query",
     *     description="Max results",
     *     required=false,
     *     @OA\Schema(type="integer")
     * )
     * @OA\Parameter(
     *     name="offset",
     *     in="query",
     *     description="Offset",
     *     required=false,
     *     @OA\Schema(type="integer")
     * )
     * @OA\Parameter(
     *     name="last",
     *     in="query",
     *     description="Ordre by borrow date or not",
     *     required=false,
     *     @OA\Schema(type="boolean")
     * )
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/Borrows"
     *     )
     * )
     */
    #[View(serializerGroups: ["get-books", "get-borrows"])]
    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[Route('', name: 'app_api_get_borrows', methods: ['GET'])]
    public function getBorrows(BorrowRepository $borrowRepository, Request $request)
    {
        $user = $this->getUser();

        $borrows = $borrowRepository->findByUser(
            $user,
            $request->query->getInt('maxResults', 4),
            $request->query->getInt('offset', 0),
            $request->query->get('last', false)
        );

        if (!$borrows) {
            return new JsonResponse(['error' => 'No borrows found'], 404);
        }

        $borrows_count = $borrowRepository->countByUser($user);
        return [
            'results' => $borrows_count,
            'borrows' => $borrows
        ];
    }
}
