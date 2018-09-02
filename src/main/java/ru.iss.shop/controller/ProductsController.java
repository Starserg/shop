package ru.iss.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.iss.shop.domain.Product;
import ru.iss.shop.repository.ProductRepository;

@Controller
public class ProductsController {

    @Autowired
    private ProductRepository repository;

    @GetMapping("/products")
    public String getProducts(Model model) {
        Iterable<Product> products = repository.findAll();
        model.addAttribute("products", products);
        return "products";
    }


    @PostMapping("/productToCart")
    public String setProductsToCart(@RequestParam Long productId, Model model) {
        System.out.println(productId);
        Iterable<Product> products = repository.findAll();
        model.addAttribute("products", products);
        return "products";
    }
}
