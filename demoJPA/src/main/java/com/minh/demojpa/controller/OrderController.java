package com.minh.demojpa.controller;

import com.minh.demojpa.entity.Orders;
import com.minh.demojpa.service.IProductService;
import com.minh.demojpa.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    UsersService userService;

    //Demo nen dung truc tiep product repository
    @Autowired
    IProductService productService;

    @GetMapping("/orders")
    public String viewOrders(Model model, Principal principal) {
        List<Orders> orders = userService.getUserByUserName(principal.getName()).getOrders();
        model.addAttribute("orders", orders);
        return "order"; // Create an orders.html page to display the orders
    }

}
