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

    @RequestMapping("/all")
    public String all() {
        return "books/all";
    }

    @RequestMapping("/all/my")
    public String allMy() {
        return "books/allUserBooks";
    }

    @RequestMapping("/borrow")
    public String allBorrow() {
        return "books/allBorrow";
    }

    @RequestMapping("/lent")
    public String allLent() {
        return "books/allLent";
    }

    @RequestMapping("/edit")
    public String editBook() {
        return "books/edit";
    }

    @RequestMapping("/add")
    public String addBook() {
        return "books/add";
    }
}
