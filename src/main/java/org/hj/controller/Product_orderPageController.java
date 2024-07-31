package org.hj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Product_orderPageController {
  
  @GetMapping("/orderend")
  public String orderEndPage() {
    
    return "/Product_orderEndPage";
  }

}
