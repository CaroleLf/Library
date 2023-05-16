<?php

namespace App\Repository;

use App\Entity\Book;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Book>
 *
 * @method Book|null find($id, $lockMode = null, $lockVersion = null)
 * @method Book|null findOneBy(array $criteria, array $orderBy = null)
 * @method Book[]    findAll()
 * @method Book[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BookRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Book::class);
    }

    public function save(Book $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Book $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    /**
     * @return Book[] Returns an array of Book objects
     */
    public function findByAuthor($author, $offset, $maxResults): array
    {
        return $this->createQueryBuilder('b')
            ->join('b.authors', 'a')
            ->andWhere('a.name like :author')
            ->setParameter('author', $author)
            ->setFirstResult($offset)
            ->setMaxResults($maxResults)
            ->groupBy('b.id')
            ->getQuery()
            ->getResult();
    }

    public function findCountByAuthor($author): int
    {
        return $this->createQueryBuilder('b')
            ->select('COUNT(DISTINCT b.id)')
            ->join('b.authors', 'a')
            ->where('a.name LIKE :author')
            ->setParameter('author', $author)
            ->getQuery()
            ->getSingleScalarResult();
    }

    public function findLatestAcquisition($maxResults): array
    {
        return $this->createQueryBuilder('b')
            ->orderBy('b.purchaseDate', 'DESC')
            ->setMaxResults($maxResults)
            ->getQuery()
            ->getResult();
    }


//    public function findOneBySomeField($value): ?Book
//    {
//        return $this->createQueryBuilder('b')
//            ->andWhere('b.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
