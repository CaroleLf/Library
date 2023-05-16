<?php

namespace App\Tests;

use App\Repository\BorrowRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class BorrowAPITest extends WebTestCase
{
    public function testGetBorrow(): void
    {
        $repo = $this->getContainer()->get(BorrowRepository::class);
        $borrows  = $repo->findAll();
        $this->assertCount(162, $borrows);

    }

    public function testValuesBorrow():void
    {
        $repo = $this->getContainer()->get(BorrowRepository::class);
        $borrows  = $repo->findAll();
        
        foreach ($borrows as $borrow) {
            $this->assertNotEmpty($borrow->getId());
            $this->assertNotEmpty($borrow->getBorrowDate());
            $this->assertNotEmpty($borrow->getUser());
            $this->assertNotEmpty($borrow->getBook());
        }
    }


    public function testGetBorrowByUser(): void
    {
        $client = static::createClient();
        // Connexion
        $client->JsonRequest('POST', '/api/login', [
            'mail' => 'benjamin.williams@example.com',
            'password' => '#t2$#XzYyvO'
        ]);

        $client->jsonRequest('GET', '/api/borrows');  

        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $borrows = $data['borrows'];
        $this->assertNotEmpty($data);
        $this->assertResponseStatusCodeSame(200);
        $this->assertCount(4, $borrows);

    }
}
