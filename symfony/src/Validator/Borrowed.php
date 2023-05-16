<?php

namespace App\Validator;

use Symfony\Component\Validator\Constraint;

#[\Attribute]
class Borrowed extends Constraint
{
    public string $message =
    'Le livre de la critique n\'est pas présent dans la liste des livres empruntés par l\'utilisateur.';

    public function getTargets(): string
    {
        return self::CLASS_CONSTRAINT;
    }
}
