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

//    @RequestMapping("/all")
//    public String all() {
//        return "books/all";
//    }

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

    @RequestMapping("/history")
    public String historyBook() {
        return "books/history";
    }

    @RequestMapping("/historyProgress")
    public String historyBookProgress() {
        return "books/editProgress";
    }

    @RequestMapping("/notes")
    public String allNotes() {
        return "notes/all";
    }

    @RequestMapping("/notesList")
    public String allNotesList() {
        return "notes/list";
    }

    @RequestMapping("/notesEdit")
    public String notesEdit() {
        return "notes/edit";
    }

    @RequestMapping("/notesAdd")
    public String notesAdd() {
        return "notes/add";
    }

    @RequestMapping("/userEdit")
    public String userEdit() {
        return "user/edit";
    }

    @RequestMapping("/userAdd")
    public String userAdd() {
        return "user/add";
    }

    @RequestMapping("/userList")
    public String userList() {
        return "user/list";
    }

    @RequestMapping("/userDetails")
    public String userDetails() {
        return "user/details";
    }
}
