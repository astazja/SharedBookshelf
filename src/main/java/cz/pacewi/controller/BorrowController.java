package cz.pacewi.controller;

import cz.pacewi.model.BooksBorrowed;
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

import javax.validation.Valid;


@Controller
@RequestMapping("/book/borrow")
@RequiredArgsConstructor
public class BorrowController {

    private final BorrowService borrowService;
    private final BookService bookService;
    private final UserService userService;

    @GetMapping("/all/user{id}")
    public String showBorrowBooks(@PathVariable Long id, Model model) {
        model.addAttribute("books", borrowService.allBorrowBooks(id));
        return "/books/allBorrow";
    }
    @GetMapping("/all/lent/user{id}")
    public String showLentBooks(@PathVariable Long id, Model model) {
        model.addAttribute("books", borrowService.allLentBooks(id));
        return "/books/allLent";
    }
    @GetMapping("/{bookId}/add/user{userId}")
    public String addBorrowBook(@PathVariable Long bookId, @PathVariable Long userId, Model model) {
        model.addAttribute("book", bookService.getBook(bookId));
        model.addAttribute("user", userService.getUser(userId));
        model.addAttribute("borrow", new BooksBorrowed());
        return "/books/borrow";
    }
    @PostMapping("/{bookId}/add/user{userId}")
    public String saveBorrowBook(@Valid BooksBorrowed booksBorrowed,
                           @PathVariable Long bookId, @PathVariable Long userId,
                           BindingResult result) {
        if(result.hasErrors()) {
            return "/books/borrow";
        }
        booksBorrowed.setWhatBooksBorrowed(bookService.getBookById(bookId));
        booksBorrowed.setByWhom(userService.getUserById(userId));
        borrowService.addBorrow(booksBorrowed);
        return "redirect:/book";
    }
    @GetMapping("/back/{borrowId}")
    public String backBorrowBook(@PathVariable Long borrowId) {
        borrowService.backBorrowBook(borrowId);
        return "redirect:/book";
    }
}
