package com.olegpruh.internetshop.controller;

import com.olegpruh.internetshop.model.Product;
import com.olegpruh.internetshop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigDecimal;

@Controller
public class HomeController {
    private ProductService productService;

    @Autowired
    public HomeController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String getAll(Model model) {
        model.addAttribute("products", productService.getAll());
        model.addAttribute("page_title", "Home");
        return "home";
    }

    @GetMapping("/search/{query}")
    public String getAll(Model model, @PathVariable String query) {
        model.addAttribute("products", productService.getAllBySearchQuery(query));
        model.addAttribute("page_title", "Search: \""+query+"\"");
        return "home";
    }

    @GetMapping("/{id}")
    public String getAll(Model model, @PathVariable Long id) {
        model.addAttribute("product", productService.get(id));
        model.addAttribute("page_title", "Product");
        return "product";
    }

    @GetMapping("/inject")
    @ResponseBody
    public String inject() {
        Product product = new Product("VARMILO VA88M V2 MOONLIGHT UK ISO CHERRY MX BROWN",
                BigDecimal.valueOf(140),"1823749123.webp","The VA88M V2 Moonlight is a high quality, tenkeyless, mechanical,"
                + " PC keyboard by Varmilo it has a charcoal case, black Iron base plate, white backlighting and "
                + "the keys are dark and light grey with three cyan keys. The legends are black and dye-sublimated"
                + " onto the PBT keycaps in a UK ISO layout.", "12349012", 23);
        productService.add(product);
        return "injected";
    }
}
