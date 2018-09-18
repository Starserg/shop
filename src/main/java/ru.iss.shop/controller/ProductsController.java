package ru.iss.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.iss.shop.domain.Product;
import ru.iss.shop.helpers.FileHelper;
import ru.iss.shop.repository.ProductRepository;

import java.io.IOException;

@Controller
public class ProductsController {
    @Value("${upload.path}")
    private String uploadPath;

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/products")
    public String getProducts(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<Product> products;
        if (filter != null && !filter.isEmpty()) {
            products = productRepository.findAllByNameContainingIgnoreCase("%" + filter + "%");
            model.addAttribute("filter", filter);
        } else {
            products = productRepository.findAll();
        }
        model.addAttribute("products", products);
        return "products";
    }


    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("/addProduct")
    public String getAddProduct(Product product, Model model) {
        return "addProduct";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping("/addProduct")
    public String addProduct(@RequestParam("file") MultipartFile file, Product product, Model model) throws IOException {
        String fileName = FileHelper.loadFile(file, uploadPath);
        product.setImgUrl(fileName);
        productRepository.save(product);
        return "addProduct";
    }
}
