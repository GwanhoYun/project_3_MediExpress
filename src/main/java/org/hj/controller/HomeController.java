package org.hj.controller;


import java.util.List;
import java.util.Locale;

import org.hj.model.Product_indexVO;
import org.hj.service.Product_indexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
  @Autowired
  private Product_indexService productService;
	
   	@GetMapping("/") 
   	public String home(Model model) {
   	  List<Product_indexVO> productList = productService.getProducts();
   	  
   	  
   	  if (productList.size() > 0) model.addAttribute("product1", productList.get(0));
   	  //forEach문을 사용하지 않고 값을 배치 하기떄문에 product+i 로 선언
   	  for(int i =0; i < productList.size(); i++) {
   	    model.addAttribute("product"+i,productList.get(i));
   	  }
      
   	  
   	
   	  /*if (productList.size() > 1) model.addAttribute("product2", productList.get(1));
      if (productList.size() > 2) model.addAttribute("product3", productList.get(2));
      if (productList.size() > 3) model.addAttribute("product4", productList.get(3));*/
   	  
   	  return "index"; 
   	}
	 

	
	
}
