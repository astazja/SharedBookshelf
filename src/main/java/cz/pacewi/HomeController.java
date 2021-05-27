package cz.pacewi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "homepage";
    }

    @RequestMapping("/book")
    public String dashboard() {
        return "books/dashboard";
    }

    @RequestMapping("/bookshelf")
    public String bookshelf() {
        return "guest/pageBookshelf";
    }

    @RequestMapping("/details")
    public String details() {
        return "books/details";
    }
}
