<?php

namespace App\Tests;

use App\Repository\UserRepository;
use phpDocumentor\Reflection\Types\Void_;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class UserAPITest extends WebTestCase
{
    public function testGetUser(): void
    {
        $repo = $this->getContainer()->get(UserRepository::class);
        $users  = $repo->findAll();
        $this->assertCount(51, $users);

        foreach ($users as $user) {
            $this->assertNotEmpty($user->getId());
            $this->assertNotEmpty($user->getMail());
            $this->assertNotEmpty($user->getRoles());
            $this->assertNotEmpty($user->getName());
        }
    }

    public function testUserLoggedIn():void 
    {
        $client = static::createClient();

        $client->JsonRequest('POST', '/api/login', [
            'mail' => 'rois2coeurs@gmail.com',
            'password' => 'bonsoir123'
        ]);

        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);

        $this->assertResponseStatusCodeSame(200);
        $this->assertNotEmpty($data['token']);

        //Wrong parameter
        $client->JsonRequest('POST', '/api/login', [
            'pas' => 'rois2coeurs@gmail.com',
            'bien' => 'bonsoir123'
        ]);
        $this->assertResponseStatusCodeSame(400);

        //Missing parameter
        $client->JsonRequest('POST', '/api/login');
        $this->assertResponseStatusCodeSame(400);


    }

    public function testPostFollowing(): void
    {
        $client = static::createClient();
        // Connexion
        $client->JsonRequest('POST', '/api/login', [
            'mail' => 'rois2coeurs@gmail.com',
            'password' => 'bonsoir123'
        ]);

        // Get the follow
        $client->request('GET', '/api/follow');
        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $this->assertEquals(0, $data['results']);

        // Follow 
        $client->request('POST', '/api/follow/1?followId=2');
        $this->assertResponseStatusCodeSame(200);
        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $this->assertArrayHasKey('success', $data);

        // Verification of the follow
        $client->request('GET', '/api/follow');
        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $this->assertEquals(1, $data['results']);

    }


    public function testDeleteFollowing(): void
    {
        $client = static::createClient();
        // Connexion
        $client->JsonRequest('POST', '/api/login', [
            'mail' => 'rois2coeurs@gmail.com',
            'password' => 'bonsoir123'
        ]);

        // Follow 
        $client->request('POST', '/api/follow/1?followId=2');
        $this->assertResponseStatusCodeSame(200);
        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $this->assertArrayHasKey('success', $data);

        // Get the follow
        $client->request('GET', '/api/follow');
        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $this->assertEquals(1, $data['results']);



        $client->request('DELETE', '/api/follow/1?followId=2');
        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(200);

        // Verification of the follow
        $client->request('GET', '/api/follow');
        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $this->assertEquals(0, $data['results']);
    }


    public function testGetUserById(): void
    {
        $client = static::createClient();

        $client->request('GET', '/api/user/1');
        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(200);
        $data = json_decode($response->getContent(), true);
        $this->assertNotEmpty($data['user']['id']);
        $this->assertNotEmpty($data['user']['mail']);
        $this->assertNotEmpty($data['user']['name']);

        $this->assertEquals(1, $data['user']['id']);

        $client->request('GET', '/api/user/16538365635632563285732875637856328756');
        $this->assertResponseStatusCodeSame(404);
    }
}
