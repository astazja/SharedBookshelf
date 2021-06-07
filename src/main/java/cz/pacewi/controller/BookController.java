package cz.pacewi.controller;

import cz.pacewi.model.Book;
import cz.pacewi.repository.BookRepository;
import cz.pacewi.repository.UserRepository;
import cz.pacewi.service.BookService;
import cz.pacewi.service.BorrowService;
import cz.pacewi.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;

@Controller
@RequestMapping("/book")
@RequiredArgsConstructor
public class BookController {

    private final BookService bookService;
    private final BorrowService borrowService;

    @RequestMapping("/user{userId}")
    public String dashboard(@PathVariable Long userId, Model model) {
        model.addAttribute("borrowBooks", borrowService.allBorrowBooks(userId));
        model.addAttribute("books", bookService.allMyBooks(userId));
        return "books/dashboard";
    }

    @GetMapping("/all")
    public String showBooks(Model model) {
        model.addAttribute("books", bookService.allBooks());
        return "/books/all";
    }
    @GetMapping("/add")
    public String addBook(Model model) {
        model.addAttribute("book", new Book());
        return "/books/add";
    }
    @PostMapping("/add")
    public String saveBook(@Valid Book book, BindingResult result) {
        if(result.hasErrors()) {
            return "/books/add";
        }
        bookService.addBook(book);
        return "redirect:/book/all";
    }
    @GetMapping("/edit/{id}")
    public String editBook(@PathVariable Long id, Model model) {
        model.addAttribute("book", bookService.getBook(id));
        return "/books/edit";
    }
    @PostMapping("/update")
    public String updateBook(@Valid Book book, BindingResult result) {
        if(result.hasErrors()) {
            return "/books/edit";
        }
        bookService.updateBook(book);
        return "redirect:/book/all";
    }
    @GetMapping("/show/{id}")
    public String showBook(@PathVariable Long id, Model model) {
        model.addAttribute("book", bookService.getBook(id).orElseThrow(EntityNotFoundException::new));
        model.addAttribute("borrow", borrowService.allBooks(id));
        return "/books/details";
    }
    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable Long id) {
        bookService.removeBook(id);
        return "redirect:/book/all";
    }
}
