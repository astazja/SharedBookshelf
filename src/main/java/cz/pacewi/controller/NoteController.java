package cz.pacewi.controller;

import cz.pacewi.model.Book;
import cz.pacewi.model.Notes;
import cz.pacewi.service.BookService;
import cz.pacewi.service.NoteService;
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
@RequestMapping("/notes")
@RequiredArgsConstructor
public class NoteController {

    private final NoteService noteService;
    private final BookService bookService;

    @GetMapping("/allBooks")
    public String showNotes(Model model) {
        model.addAttribute("notes", noteService.allNotes());
        return "/notes/all";
    }
    @GetMapping("/book{id}/list")
    public String showBookNotes(@PathVariable long id, Model model) {
        model.addAttribute("notes", noteService.findByBookNotes(bookService.getBookById(id)));
        return "/notes/list";
    }
    @GetMapping("/add")
    public String addNote(Model model) {
        model.addAttribute("note", new Notes());
        return "/notes/add";
    }
    @PostMapping("/add")
    public String saveNote(@Valid Notes notes, BindingResult result) {
        if(result.hasErrors()) {
            return "/notes/add";
        }
        noteService.addNote(notes);
        return "redirect:/notes/list";
    }
}
