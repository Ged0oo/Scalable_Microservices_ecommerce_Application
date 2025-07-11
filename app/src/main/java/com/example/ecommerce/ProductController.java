package com.example.ecommerce;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;

@Controller
public class ProductController {
    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("products", List.of(
            new Product("Laptop", 999.99, "/images/laptop.jpg"),
            new Product("Phone", 699.99, "/images/phone.jpg"),
            new Product("Headphones", 149.99, "/images/headphones.jpg")
        ));
        return "index";
    }

    record Product(String name, double price, String imageUrl) {}
}