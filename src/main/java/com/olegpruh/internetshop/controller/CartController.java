package com.olegpruh.internetshop.controller;

import com.olegpruh.internetshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart")
public class CartController {
    private final CartService service;

    @Autowired
    public CartController(CartService service) {
        this.service = service;
    }

    @GetMapping
    public String cart(Model model) {
        model.addAttribute("products", service.findAll());
        model.addAttribute("page_title", "My cart");
        return "cart";
    }
}
