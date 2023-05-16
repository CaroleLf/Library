<?php

namespace App\Tests;

use App\Repository\FavoriteRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class FavoriteAPITest extends WebTestCase
{
    public function testGetFavory(): void
    {
        $repo = $this->getContainer()->get(FavoriteRepository::class);
        $favories  = $repo->findAll();
        $this->assertCount(14, $favories);

        foreach ($favories as $favory) {
            $this->assertNotEmpty($favory->getId());
            $this->assertNotEmpty($favory->getBook());
        }
    }

    public function testRouteFavoriteBook()
    {
        $client = static::createClient();
        $client->request('GET', '/api/books/favorite',['offset' => 0]);
        $this->assertResponseIsSuccessful();
        $this->assertJson($client->getResponse()->getContent());
        $response = json_decode($client->getResponse()->getContent(), true);
        $favorites = $response['favorites'];
        $this->assertCount(4, $favorites);
    }
}
