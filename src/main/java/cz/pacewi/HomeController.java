package cz.pacewi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "homepage";
    }



    @RequestMapping("/bookshelf")
    public String bookshelf() {
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
