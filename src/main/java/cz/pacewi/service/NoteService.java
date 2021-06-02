package cz.pacewi.service;

import cz.pacewi.model.Book;
import cz.pacewi.model.Notes;
import cz.pacewi.model.User;

import java.util.List;
import java.util.Optional;

public interface NoteService {
    List<Notes> allNotes();
    Optional<Notes> getNote(Long id);
    void addNote(Notes notes);
    void updateNote(Notes notes);
    void removeNote(Long id);
    List<Notes> findByBookNotes(Book book);
    List<Notes> findByUserNotes(User user);
}
