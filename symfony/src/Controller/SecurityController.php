<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use OpenApi\Annotations as OA;

class SecurityController extends AbstractController
{
    /**
     * Login the user
     *
     * @OA\RequestBody(
     *     request="Login",
     *     description="Login the user",
     *     required=true,
     *     @OA\JsonContent(
     *       ref="#/components/schemas/UserLogin"
     *     )
     * )
     * @OA\Response(
     *     response="200",
     *     description="Success",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/Login"
     *     )
     * )
     * @OA\Response(
     *     response="400",
     *     description="Bad Request missing email or password"
     * )
     *   @OA\Response(
     *     response="401",
     *     description="Unauthorized wrong email or password"
     * )
     * @OA\Tag(name="Security")
     */
    #[Route('/api/login', name: 'app_api_post_login', methods: ['POST'])]
    public function postLogin(UserRepository $userRepository): Response
    {
        $user = $this->getUser();

        if ($user->getToken() === null) {
            $user->setToken(bin2hex(random_bytes(32)));
            $userRepository->save($user, true);
        }

        return $this->json([
            'token' => $user->getToken(),
            'email' => $user->getMail(),
            'name' => $user->getName(),
            'profile_picture' => $user->getProfilePicture(),
            'roles' => $user->getRoles(),
        ]);
    }
}
