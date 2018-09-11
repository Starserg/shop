package ru.iss.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.iss.shop.Exception.EmailAlreadyExistException;
import ru.iss.shop.Exception.NicknameAlreadyExistException;
import ru.iss.shop.domain.User;
import ru.iss.shop.service.UserService;


@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration(Model model) {
        return "registration";
    }


    @GetMapping("/activation/{code}")
    public String activate(Model model, @PathVariable String code){
        if(userService.activateUser(code)){
            model.addAttribute("message", "YOUR ACCOUNT WAS ACTIVATED");
            return "redirect:/login";
        }
        else{
            model.addAttribute("message", "WRONG ACTIVATION CODE");
            return "redirect:/login";
        }
    }

    @PostMapping("/registration")
    public String register(User user, Model model) {
        try {
            userService.addUser(user);
        } catch (EmailAlreadyExistException e) {
            model.addAttribute("message", e.getMessage());
            return "registration";
        } catch (NicknameAlreadyExistException e) {
            model.addAttribute("message", e.getMessage());
            return "registration";
        }
        userService.sendActivationMail(user);
        return "login";
    }
}
