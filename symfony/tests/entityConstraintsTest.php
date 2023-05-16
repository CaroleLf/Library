<?php

use App\Entity\Review;
use App\Entity\Book;
use App\Entity\User;
use App\Entity\Borrow;
use Symfony\Component\Validator\Test\ConstraintValidatorTestCase;
use App\Validator\BorrowedValidator;
use App\Validator\Borrowed;


class entityConstraintsTest extends ConstraintValidatorTestCase
{
    protected function createValidator()
    {
        return new BorrowedValidator();
    }

    public function testReviewWhenBorrowed()
    {
        $review = new Review();
        $book = new Book();
        $user = new User();
        $borrow = new Borrow();

        $book->setName('Test Book');
        $user->setMail('test@mail.com');
        $user->setName('Test User');
        $borrow->setBorrowDate(new \DateTime('2019-01-01'));
        $user->addBorrow($borrow);
        $book->addBorrow($borrow);
        $review->setBook($book);
        $review->setUser($user);

        $this->validator->validate($review, new Borrowed());
        $this->assertNoViolation();
    }

    public function testReviewWhenNotBorrowed()
    {
        $review = new Review();
        $book = new Book();
        $user = new User();

        $book->setName('Test Book');
        $user->setMail('mail@test.com');
        $user->setName('Test User');
        $review->setBook($book);
        $review->setUser($user);

        $this->validator->validate($review, new Borrowed());
        $this->buildViolation('Le livre de la critique n\'est pas présent dans la liste des livres empruntés par l\'utilisateur.')
            ->setParameter('{{ review }}', $review)
            ->assertRaised();
    }
}
