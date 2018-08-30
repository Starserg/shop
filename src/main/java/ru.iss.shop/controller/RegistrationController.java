package ru.iss.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.iss.shop.service.UserService;


@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration(Model model) {
        return "registration";
    }


    @PostMapping("/register")
    public String register(@RequestParam String email, @RequestParam String name, Model model) {

        userService.sendMail(email, "your name: " + name);
        return "registration";

    }
}
