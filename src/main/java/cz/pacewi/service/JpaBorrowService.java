package cz.pacewi.service;

import cz.pacewi.model.BooksBorrowed;
import cz.pacewi.repository.BorrowRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JpaBorrowService implements BorrowService{

    private final BorrowRepository borrowRepository;

    public JpaBorrowService(BorrowRepository borrowRepository) {
        this.borrowRepository = borrowRepository;
    }

    @Override
    public List<BooksBorrowed> allBorrowBooks(Long id) {
        return borrowRepository.findAllBooksBorrowed(id);
    }

    @Override
    public List<BooksBorrowed> allLentBooks(Long id) {
        return borrowRepository.findAllBooksLent(id);
    }

    @Override
    public BooksBorrowed getBorrowBook(Long id) {
        return borrowRepository.getById(id);
    }

    @Override
    public void addBorrow(BooksBorrowed bookBorrowed) {
        borrowRepository.save(bookBorrowed);
    }

    @Override
    public void backBorrowBook(Long id) {
        borrowRepository.deleteById(id);
    }
}
