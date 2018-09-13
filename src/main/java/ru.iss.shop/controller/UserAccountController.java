package ru.iss.shop.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.iss.shop.domain.Product;

@Controller
public class UserAccountController {
    @GetMapping("/userAccount")
    public String getProducts(Model model) {
        return "userAccount";
    }
}
