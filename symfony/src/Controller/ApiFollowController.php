<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use OpenApi\Annotations as OA;
use FOS\RestBundle\Controller\Annotations\View;
use Nelmio\ApiDocBundle\Annotation\Security;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Security\Http\Attribute\IsGranted;

/**
 * @OA\Tag(name="Follow")
 */
#[Route('/api/follow', name: 'app_api')]
class ApiFollowController extends AbstractController
{
    /**
     * Get a list of suggested users based on the current user's friends
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
     */
    #[View(serializerGroups: ['user_infos'])]
    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[Route('/suggestion', name: 'app_api_suggestion_follow', methods: ['GET'])]
    public function suggestionFollowers(UserRepository $repository, Request $request): array
    {
        $userId = $this->getUser()->getId();

        $following = $repository->findSuggestionFollowing(
            $userId,
            $request->query->getInt('maxResults', 4),
            $request->query->getInt('offset', 0)
        );
        return [
            'results' => $repository->countSuggestionFollowing($userId),
            'following' => $following
        ];
    }

    /**
     * Get all the follows of the current user
     *
     * @OA\Parameter(
     *     name="maxResults",
     *     in="query",
     *     description="Max results default 3",
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
     * @OA\Response(
     *     response=200,
     *     description="Return the list of the current user's follows",
     *     @OA\JsonContent(
     *       ref="#/components/schemas/get-follow"
     *     )
     * )
     * @OA\Tag(name="Follow")
     */
    #[View(serializerGroups: ['user_infos', 'get-borrows', 'get-books'])]
    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[Route('', name: 'app_api_get_follow', methods: ['GET'])]
    public function getFollow(Request $request)
    {
        $user = $this->getUser();
        $follows = $user->getFollowing()->slice(
            $request->query->getInt('offset', 0),
            $request->query->getInt('maxResults', 3)
        );
        $follows_count = $user->getFollowing()->count();

        return [
            'results' => $follows_count,
            'following' => $follows,
        ];
    }

    /**
     * Follow a new user
     *
     * @OA\Parameter(
     *     name="to_follow_id",
     *     in="path",
     *     description="Id of the User you want to follow",
     *     required=true
     * )
     * @OA\Response(
     *     response=200,
     *     description="Success new user followed"
     * )
     * @OA\Response(
     *     response="400",
     *     description="Bad Request missing id or user not found or user already followed"
     * )
     * @OA\Tag(name="Follow")
     */
    #[View()]
    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[Route('/{to_follow_id}', name: 'app_api_post_follow', methods: ['POST'])]
    public function postFollow(UserRepository $userRepository, Request $request)
    {
        if (!$request->attributes->has('to_follow_id')) {
            return new JsonResponse(['error' => 'Bad Request missing id'], 400);
        }

        $user = $this->getUser();

        $newFollowId = $request->attributes->get('to_follow_id');
        $newFollow = $userRepository->findOneBy(['id' => $newFollowId]);

        if (!$newFollow) {
            return new JsonResponse(['error' => 'User not found'], 400);
        }
        if ($user->getFollowing()->contains($newFollow)) {
            return new JsonResponse(['error' => 'User already followed'], 400);
        }
        if ($user->getId() === $newFollow->getId()) {
            return new JsonResponse(['error' => 'You can\'t follow yourself'], 400);
        }

        $user->addFollowing($newFollow);
        $userRepository->save($user, true);

        return new JsonResponse(['success' => 'User followed'], 200);
    }

    /**
     * Unfollow a user
     *
     * @OA\Parameter(
     *     name="to_unfollow_id",
     *     in="path",
     *     description="Id of the User you want to unfollow",
     *     required=true
     * )
     * @OA\Response(
     *     response=200,
     *     description="Success user unfollowed"
     * )
     * @OA\Response(
     *     response="400",
     *     description="Bad request"
     * )
     * @OA\Tag(name="Follow")
     */
    #[View()]
    #[IsGranted("ROLE_USER")]
    #[Security(name: "Bearer")]
    #[Route('/{to_unfollow_id}', name: 'app_api_delete_follow', methods: ['DELETE'])]
    public function deleteFollow(Request $request, UserRepository $userRepository)
    {
        if (!$request->attributes->has('to_unfollow_id')) {
            return new JsonResponse(['error' => 'Bad Request missing to_unfollow_id'], 400);
        }

        $user = $this->getUser();

        $toUnfollowId = $request->attributes->get('to_unfollow_id');
        $toUnfollow = $userRepository->findOneBy(array('id' => $toUnfollowId));

        if (!$toUnfollow) {
            return new JsonResponse(['error' => 'User not found'], 400);
        }
        if (!$user->getFollowing()->contains($toUnfollow)) {
            return new JsonResponse(['error' => 'User not followed'], 400);
        }
        if ($user->getId() === $toUnfollow->getId()) {
            return new JsonResponse(['error' => 'You can\'t unfollow yourself'], 400);
        }

        $user->removeFollowing($toUnfollow);
        $userRepository->save($user, true);

        return new JsonResponse(['success' => 'User unfollowed'], 200);
    }
}
