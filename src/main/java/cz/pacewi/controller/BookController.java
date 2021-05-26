package cz.pacewi.controller;

import cz.pacewi.repository.BookRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book")
@RequiredArgsConstructor
public class BookController {

    private final BookRepository bookRepository;

    @RequestMapping("/all")
    public String all(Model model) {
        model.addAttribute("books", bookRepository.findAll());
        return "book/all";
    }


}
