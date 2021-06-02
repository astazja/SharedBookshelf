package cz.pacewi.service;

import cz.pacewi.model.Book;
import cz.pacewi.model.Notes;
import cz.pacewi.model.User;
import cz.pacewi.repository.NoteRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class JpaNoteService implements NoteService{

    private final NoteRepository noteRepository;

    public JpaNoteService(NoteRepository noteRepository) {
        this.noteRepository = noteRepository;
    }

    @Override
    public List<Notes> allNotes() {
        return noteRepository.findAll();
    }

    @Override
    public Optional<Notes> getNote(Long id) {
        return noteRepository.findById(id);
    }

    @Override
    public void addNote(Notes notes) {
        noteRepository.save(notes);
    }

    @Override
    public void updateNote(Notes notes) {
        noteRepository.save(notes);
    }

    @Override
    public void removeNote(Long id) {
        noteRepository.deleteById(id);
    }

    @Override
    public List<Notes> findByBookNotes(Book book) {
        return noteRepository.findByBookNotes(book);
    }

    @Override
    public List<Notes> findByUserNotes(User user) {
        return noteRepository.findByBooksNotes(user);
    }
}
