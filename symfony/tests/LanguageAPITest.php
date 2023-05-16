<?php

namespace App\Tests;

use App\Repository\LanguageRepository;
use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class LanguageAPITest extends WebTestCase
{
    public function testGetLanguage(): void
    {
        $repo = $this->getContainer()->get(LanguageRepository::class);
        $languages  = $repo->findAll();
        $this->assertCount(5, $languages);

    }
}
