package cz.pacewi.repository;

import cz.pacewi.model.Book;
import cz.pacewi.model.Notes;
import cz.pacewi.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoteRepository extends JpaRepository<Notes, Long> {

    List<Notes> findByBookNotes(Book book);
    List<Notes> findByBooksNotes(User user);
}
