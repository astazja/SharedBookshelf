package cz.pacewi.service;

import cz.pacewi.model.BooksBorrowed;
import cz.pacewi.model.User;

import java.util.List;

public interface BorrowService {
    List<BooksBorrowed> allBorrowBooks(Long id);
    List<BooksBorrowed> allLentBooks(Long id);
    BooksBorrowed getBorrowBook(Long id);
    void addBorrow(BooksBorrowed bookBorrowed);
    void backBorrowBook(Long id);

}
