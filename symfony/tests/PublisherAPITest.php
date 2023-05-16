<?php

namespace App\Tests;

use App\Repository\PublisherRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class PublisherAPITest extends WebTestCase
{
    public function testGetPublisher(): void
    {
        $repo = $this->getContainer()->get(PublisherRepository::class);
        $publisher  = $repo->findAll();
        $this->assertCount(95, $publisher);

        foreach ($publisher as $publishers) {
            $this->assertNotEmpty($publishers->getId());
            $this->assertNotEmpty($publishers->getName());
            $this->assertNotEmpty($publishers->getBooks());
        }
    }
}
