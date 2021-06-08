package cz.pacewi;

import cz.pacewi.model.Book;
import cz.pacewi.service.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final BookService bookService;

    @RequestMapping("/")
    public String home() {
        return "homepage";
    }

    @RequestMapping("/bookshelf")
    public String bookshelf(Model model) {
        model.addAttribute("books", bookService.allBooks());
        return "guest/pageBookshelf";
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login() {
        return "user/login";
    }




    @RequestMapping("/all/my")
    public String allMy() {
        return "books/allUserBooks";
    }

    @RequestMapping("/history")
    public String historyBook() {
        return "books/history";
    }

    @RequestMapping("/historyProgress")
    public String historyBookProgress() {
        return "books/editProgress";
    }




}
