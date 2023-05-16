<?php

namespace App\Repository;

use App\Entity\User;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<User>
 *
 * @method User|null find($id, $lockMode = null, $lockVersion = null)
 * @method User|null findOneBy(array $criteria, array $orderBy = null)
 * @method User[]    findAll()
 * @method User[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class UserRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, User::class);
    }

    public function save(User $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(User $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function findFollowing(int $id, int $offset, int $maxResults): array
    {
        return $this->createQueryBuilder('u')
                ->select(
                    'u.id',
                    'u.name',
                    'u.mail',
                    'u.profilePicture'
                )
                ->join('u.following', 'b')
                ->where('b.id = :id')
                ->setParameter('id', $id)
                ->setFirstResult($offset)
                ->setMaxResults($maxResults)
                ->getQuery()
                ->getResult();
    }

    public function findSuggestionFollowing(int $id, int $maxResults, int $offset)
    {
        return $this->createQueryBuilder('u')
            ->select('c.id', 'c.name', 'c.profilePicture')
            ->where('u.id = :id')
            ->join('u.following', 'b')
            ->join('b.following', 'c')
            ->andWhere('c.id != b.id')
            ->andWhere('c.id != u.id')
            ->andWhere('NOT EXISTS (
                SELECT f.id FROM App\Entity\User f 
                WHERE f.id = c.id AND f MEMBER OF u.following
            )')
            ->setMaxResults($maxResults)
            ->setFirstResult($offset)
            ->setParameter('id', $id)
            ->distinct()
            ->getQuery()
            ->getResult();
    }

    public function countSuggestionFollowing(int $id)
    {
        return $this->createQueryBuilder('u')
            ->select('COUNT(DISTINCT c.id)')
            ->where('u.id = :id')
            ->join('u.following', 'b')
            ->join('b.following', 'c')
            ->andWhere('c.id != b.id')
            ->andWhere('c.id != u.id')
            ->andWhere('NOT EXISTS (
                SELECT f.id FROM App\Entity\User f 
                WHERE f.id = c.id AND f MEMBER OF u.following
            )')
            ->setParameter('id', $id)
            ->distinct()
            ->getQuery()
            ->getSingleScalarResult();
    }
}
