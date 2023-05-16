<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class AuthorAPITest extends WebTestCase
{
    public function testGetAuthors(): void
    {
        $client = static::createClient();
    
        $client->request('GET', '/api/authors', [
            "q" => "J.",
        ]);  

        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(200);
        $data = json_decode($response->getContent(), true);
        $authors = $data['authors'];
        $this->assertCount(4, $authors);

        // Empty parameter
        $client->request('GET', '/api/authors', [
            "q" => ""
        ]);  
        $this->assertResponseStatusCodeSame(400);

        // Wrong parameter
        $client->request('GET', '/api/authors', [
            "author" => "J."
        ]);  
        $this->assertResponseStatusCodeSame(400);

        // Missing parameter
        $client->request('GET', '/api/authors');
        $this->assertResponseStatusCodeSame(400);

        //All authors count check
        $client->request('GET', '/api/authors/all');
        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(200);
        $data = json_decode($response->getContent(), true);
        $authors = $data['authors'];
        $this->assertCount(73, $authors);
    }


    public function testAuthorsListValues():void
    {
        $client = static::createClient();
    
        $client->request('GET', '/api/authors', [
            "q" => "J.",
        ]);  
        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(200);
        $data = json_decode($response->getContent(), true);
        $authors = $data['authors'];

        $names = [];
        foreach ($authors as $author) {
            $this->assertArrayHasKey('name', $author, "Un auteur a un nom");
            $names[] = $author['name'];
        }

        $this->assertContains('J.K. Rowling', $names, "Test de la présence d'un auteur");
        $this->assertContains('J.R.R. Tolkien', $names, "Test de la présence d'un auteur");
    }

    public function testNoAuthors():void
    {
        $client = static::createClient();
    
        $client->request('GET', '/api/authors', [
            "q" => "dfjiodfjiosfdjiosdf",
        ]);  

        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(200);
        $data = json_decode($response->getContent(), true);
        $authors = $data['authors'];
        $this->assertCount(0, $authors);
    }

    

}
