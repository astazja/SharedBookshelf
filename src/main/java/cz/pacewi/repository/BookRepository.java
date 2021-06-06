package cz.pacewi.repository;

import cz.pacewi.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

    @Query(value = "SELECT * FROM book WHERE owner_id = ?1", nativeQuery = true)
    List<Book> findBookByOwner(Long id);
}
