<?php

namespace App\Tests;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;
use App\Repository\BookRepository;

use function PHPUnit\Framework\assertEquals;

class BookAPITest extends WebTestCase
{
    public function testGetBooks(): void
    {

        $repo = $this->getContainer()->get(BookRepository::class);
        $books  = $repo->findAll();
        $this->assertCount(221, $books);
    }

    public function testValuesBooks(): void
    {
        $repo = $this->getContainer()->get(BookRepository::class);
        $books  = $repo->findAll();
        $names = [];
        foreach ($books as $book) {
            $this->assertNotEmpty($book->getId());
            $this->assertNotEmpty($book->getLanguage());
            $this->assertNotEmpty($book->getPublisher());
            $this->assertNotEmpty($book->getCategories());
            $this->assertNotEmpty($book->getAuthors());
            $names[] = $book->getName();
        }

        $this->assertContains('The Christmas Pig', $names, "Test de la présence d'un livre");
        $this->assertContains('The Casual Vacancy', $names, "Test de la présence d'un livre");
        $this->assertContains('Very Good Lives', $names, "Test de la présence d'un livre");

    }

    public function testGetBookByAuthor():void 
    {
        $client = static::createClient();
    
        $client->request('GET', '/api/books?author=J.K. Rowling');  

        $response = $client->getResponse();

        $this->assertResponseStatusCodeSame(200);

        $data = json_decode($response->getContent(), true);

        $books = $data['books'];

        $this->assertNotEmpty($data['books']);
        $this->assertNotEmpty($data['results']);

        foreach($books as $book){
            $authors = $book['authors'][0];
            $this->assertContains('J.K. Rowling', $authors, "Test de la présence d'un auteur");
        }

        $this->assertCount(3, $books);

        //Missing parameter
        $client->request('GET', '/api/books');
        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(400);
        
    }

    public function testLatestBooks(): void
    {
        $client = static::createClient();
    
        $client->request('GET', '/api/books/latest');  

        $response = $client->getResponse();

        $this->assertResponseStatusCodeSame(200);

        $data = json_decode($response->getContent(), true);

        $books = $data['books'];
        $this->assertCount(4, $books);
    }

    public function testInformationBook():void
    {
        $client = static::createClient();
    
        $client->request('GET', '/api/book/1');  

        $response = $client->getResponse();

        $this->assertResponseStatusCodeSame(200);

        $data = json_decode($response->getContent(), true);

        $book = $data['book'];
        $this->assertNotEmpty($book['id']);
        $this->assertNotEmpty($book['language']);
        $this->assertNotEmpty($book['publisher']);
        $this->assertNotEmpty($book['categories']);
        $this->assertNotEmpty($book['authors']);
        $this->assertNotEmpty($book['name']);
        $this->assertEquals(1, $book['id']);

        //Missing parameter
        $client->request('GET', '/api/book/');  
        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(404);

        //Wrong parameter
        $client->request('GET', '/api/book/abc');
        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        assertEquals($data['book'],null);
    }
    public function testFavoriteBook():void
    {
        $client = static::createClient();
    
        $client->request('GET', '/api/books/favorite');  

        $response = $client->getResponse();
        $this->assertResponseStatusCodeSame(200);
        $data = json_decode($response->getContent(), true);
        $books = $data['favorites'];
        $this->assertNotEmpty($books);
        $this->assertCount(4, $books);

    }

    public function testSuggestionBook():void
    {
        $client = static::createClient();
        // Connexion
        $client->JsonRequest('POST', '/api/login', [
            'mail' => 'benjamin.williams@example.com',
            'password' => '#t2$#XzYyvO'
        ]);
    
        $client->request('GET', '/api/books/suggestion');  
        $this->assertResponseStatusCodeSame(200);

        $response = $client->getResponse();
        $data = json_decode($response->getContent(), true);
        $books = $data['books'];
        $this->assertNotEmpty($books);
        $this->assertCount(4, $books);

    }

}

