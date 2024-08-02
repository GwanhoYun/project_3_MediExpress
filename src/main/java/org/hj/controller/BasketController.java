package org.hj.controller;

import org.hj.service.BasketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BasketController {

    @Autowired
    private BasketService basketService;

    @PostMapping("/changebasket")
    @ResponseBody
    public String changeBasket() {
        try {
            basketService.updateBasket();
            return "success";
        } catch (Exception e) {
            return "error";
        }
    }
}
