package com.olegpruh.internetshop.controller;

import com.olegpruh.internetshop.service.WishlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wishlist")
public class WishlistController {
    private final WishlistService wishlistService;

    @Autowired
    public WishlistController(WishlistService wishlistService) {
        this.wishlistService = wishlistService;
    }

    @GetMapping
    public String wishlist(Model model) {
        model.addAttribute("products", wishlistService.findAll());
        model.addAttribute("page_title", "My wishlist");
        return "wishlist";
    }
}
