<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use OpenApi\Annotations as OA;
use FOS\RestBundle\Controller\Annotations\View;
use Symfony\Component\HttpFoundation\JsonResponse;

/**
 * @OA\Tag(name="User")
 */
#[Route('/api/user', name: 'app_api')]
class ApiUserController extends AbstractController
{
    /**
     * Get informations of a user
     *
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-user"
     *     )
     * )
     * @OA\Response(
     *     response="400",
     *     description="Bad Request missing id"
     * )
     */
    #[View(serializerGroups: ["user_infos"])]
    #[Route('/{id}', name: 'app_api_get_user', methods:'GET')]
    public function apiGetUser(Request $request, UserRepository $repository)
    {
        if (!$request->attributes->has('id')) {
            return new JsonResponse(['error' => 'Bad Request missing id'], 400);
        }

        $user_id = $request->attributes->get('id');
        $user = $repository->findOneBy(array('id' => $user_id));

        if (!$user) {
            return new JsonResponse(['error' => 'User not found'], 404);
        }

        return [
            'user' => $user
        ];
    }
}
