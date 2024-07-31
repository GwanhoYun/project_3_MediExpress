package org.hj.controller;

import org.hj.model.Product_indexVO;
import org.hj.model.BuyVO;
import org.hj.model.Product_DetailVO; // Assuming this is the VO for Product_productDetail
import org.hj.service.Product_indexService;
import org.hj.service.BuyService;
import org.hj.service.Product_DetailService; // Assuming this is the service for Product_productDetail
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.util.Map;

@Controller
public class Product_DetailController {
    private static final Logger logger = LoggerFactory.getLogger(Product_DetailController.class);

    @Autowired
    private Product_indexService productService;

    @Autowired
    private Product_DetailService productDetailService;
    


    @GetMapping("/productdetail/{id}")
    public String productdetail(@PathVariable("id") int id, Model model) {
        logger.info("Received request for product ID: {}", id);

        Product_indexVO product = productService.getProductById(id);
        List<Product_DetailVO> productDetails = productDetailService.getProductDetailsByProductId(id);
        
       

        model.addAttribute("product", product);
        model.addAttribute("productDetails", productDetails);
        return "product_Detail";
    }
    

    


   
}
