package org.hj.controller;

import java.util.List;

import org.hj.model.Product_BuypageVO;
import org.hj.service.Product_BuyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Product_BuyPageController {
  
  @Autowired
  private Product_BuyPageService productService;

  @GetMapping("/productBuyPage")
  public String getProductList( Model model) {
      List<Product_BuypageVO> productList = productService.getProductList();
      model.addAttribute("productList", productList);
      return "/product_BuyPage"; // jsp 파일명
  }
}
