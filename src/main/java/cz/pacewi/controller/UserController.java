package cz.pacewi.controller;

import cz.pacewi.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class UserController {

    private final UserRepository userRepository;

    @GetMapping("/allUser")
    public String all(Model model) {
        model.addAttribute("users", userRepository.findAll());
        return "user/list";
    }
}
