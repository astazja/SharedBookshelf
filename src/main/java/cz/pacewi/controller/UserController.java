package cz.pacewi.controller;

import cz.pacewi.model.User;
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
@RequestMapping("/profile")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/all")
    public String all(Model model) {
        model.addAttribute("users", userService.allUsers());
        return "/user/list";
    }
    @GetMapping("/add")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "/user/add";
    }
    @PostMapping("/add")
    public String saveUser(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "/user/add";
        }
        userService.addUser(user);
        return "redirect:/profile/all";
    }
    @GetMapping("/edit/{id}")
    public String editUser(@PathVariable Long id, Model model) {
        model.addAttribute("user", userService.getUser(id));
        return "/user/edit";
    }
    @PostMapping("/update")
    public String updateUser(@Valid User user, BindingResult result) {
        if(result.hasErrors()) {
            return "/user/edit";
        }
        userService.updateUser(user);
        return "redirect:/profile/all";
    }
}
