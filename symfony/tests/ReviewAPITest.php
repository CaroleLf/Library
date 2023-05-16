<?php

namespace App\Tests;

use App\Repository\ReviewRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class ReviewAPITest extends WebTestCase
{
    public function testGetReview(): void
    {
        $repo = $this->getContainer()->get(ReviewRepository::class);
        $reviews  = $repo->findAll();
        $this->assertCount(159, $reviews);

        foreach ($reviews as $review) {
            $this->assertNotEmpty($review->getId());
            $this->assertNotEmpty($review->getUser());
            $this->assertNotEmpty($review->getBook());
        }
    }
}
