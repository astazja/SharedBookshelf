package cz.pacewi.repository;

import cz.pacewi.model.BooksBorrowed;
import cz.pacewi.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BorrowRepository extends JpaRepository<BooksBorrowed, Long> {

    @Query(value = "SELECT * from books_borrowed bb JOIN book b on bb.what_books_borrowed_id = b.id where bb.by_whom_id != b.owner_id and bb.by_whom_id = ?1", nativeQuery = true)
    List<BooksBorrowed> findAllBooksBorrowed(Long id);

    @Query(value = "SELECT * from books_borrowed bb JOIN book b on bb.what_books_borrowed_id = b.id where bb.by_whom_id != b.owner_id and b.owner_id = ?1", nativeQuery = true)
    List<BooksBorrowed> findAllBooksLent (Long id);

}
