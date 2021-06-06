package cz.pacewi.service;

import cz.pacewi.model.Book;

import java.util.List;
import java.util.Optional;

public interface BookService {
    List<Book> allBooks();
    Optional<Book> getBook(Long id);
    void addBook(Book book);
    void updateBook(Book book);
    void removeBook(Long id);
    Book getBookById(Long id);
    List<Book> allMyBooks(Long id);
}
