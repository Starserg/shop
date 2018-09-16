package ru.iss.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.iss.shop.domain.History;
import ru.iss.shop.domain.Product;
import ru.iss.shop.domain.User;
import ru.iss.shop.repository.HistoryRepository;

import java.sql.Date;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private HistoryRepository historyRepository;

    @GetMapping("makeOrder/{product}")
    public String getMakeOrder(
            @PathVariable Product product,
            @AuthenticationPrincipal User user,
            Model model
    ) {
        model.addAttribute("product", product);
        return "makeOrder";
    }

    @PostMapping("makeOrder")
    public String makeOrder(
            @AuthenticationPrincipal User user,
            @RequestParam String address,
            @RequestParam Integer number,
            @RequestParam Product product
    )
    {
        History history = new History();
        history.setAddress(address);
        history.setProduct(product);
        history.setUser(user);
        history.setNumber(number);
        java.util.Date nowDate = new java.util.Date();
        history.setDate(new java.sql.Date(nowDate.getTime()));
        historyRepository.save(history);
        return "redirect:/purchases";
    }

    @GetMapping("purchases")
    public String getPurchases(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        List<History> history = historyRepository.findAllByUser(user);
        model.addAttribute("histories", history);
        return "purchases";
    }


    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("purchases/admin")
    public String getAdmin(Model model) {
        Iterable<History> histories = historyRepository.findAll();
        model.addAttribute("histories", histories);
        return "adminPurchases";
    }


}
