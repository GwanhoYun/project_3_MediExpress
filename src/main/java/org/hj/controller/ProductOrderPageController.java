package org.hj.controller;

import java.util.List;


import org.hj.model.Product_OrderPageVO;
import org.hj.service.Product_OrderPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductOrderPageController {
  
  @Autowired
  Product_OrderPageService OrderPageService;
  
  
   @GetMapping("/productOrderPage")
   public String OrderPage(Model model) {
     List<Product_OrderPageVO> OrderPage = OrderPageService.getAllOrderProducts();
     model.addAttribute("Product", OrderPage);
     return "/Product_OrderPage";
   }
  
 
}
