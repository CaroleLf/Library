<?php

namespace App\Validator;

use Symfony\Component\Validator\Constraint;
use Symfony\Component\Validator\ConstraintValidator;

class BorrowedValidator extends ConstraintValidator
{
    public function validate($receipt, Constraint $constraint): void
    {
        $userBorrows = $receipt->getUser()->getBorrows()->map(function ($borrow) {
            return $borrow->getBook();
        })->toArray();
        if (!in_array($receipt->getBook(), $userBorrows)) {
            $this->context->buildViolation($constraint->message)
                ->setParameter('{{ review }}', $receipt)
                ->addViolation();
        }
    }
}
