package org.hj.controller;

import org.hj.model.Product_indexVO;
import org.hj.service.Product_indexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class Product_DetailController {
  @Autowired
  private Product_indexService productService;
  
  
  @GetMapping("/productdetail/{id}")
  public String productdetail(@PathVariable("id") int id,Model model) {
    Product_indexVO product = productService.getProductById(id);
    
    
    return "product_Detail";
  }

}
