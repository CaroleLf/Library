<?php

namespace App\Tests;

use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class CategoryAPITest extends WebTestCase
{
    public function testGetCategories(): void
    {
        $repo = $this->getContainer()->get(CategoryRepository::class);
        $categories  = $repo->findAll();
        $this->assertCount(40, $categories);

        foreach ($categories as $category) {
            $this->assertNotEmpty($category->getId());
            $this->assertNotEmpty($category->getName());
            $this->assertNotEmpty($category->getBooks());
        }

    }
}
