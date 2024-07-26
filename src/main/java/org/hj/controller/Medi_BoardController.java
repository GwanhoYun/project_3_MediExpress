package org.hj.controller;

import org.hj.model.Medi_BoardVO;
import org.hj.service.Medi_BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class Medi_BoardController {

    @Autowired
    private Medi_BoardService mediBoardService;

     
//    @GetMapping
//    public String getProductList(Model model) {
//        List<Medi_BoardVO> mediProducts = mediBoardService.getAllMediProducts();
//        model.addAttribute("mediProducts", mediProducts);
//        return "productList"; 
//    }
    
  
    
    
    @GetMapping("/mediProduct")
    public String getAllMediProducts(Model model) {
        List<Medi_BoardVO> mediProducts = mediBoardService.getAllMediProducts();
        model.addAttribute("mediProducts", mediProducts);
        return "mediProduct";
    }
    
    //삭제 컨트롤러
    @PostMapping("/deleteMediProducts")
    @ResponseBody
    public String deleteMediProducts(@RequestBody List<Medi_BoardVO> mediProducts) {
      try {
        
        mediBoardService.deleteMediProducts(mediProducts);
        return "success";
      } catch (Exception e) {
          e.printStackTrace();
          return "error";
      }
        
    }
    

    //추가된 함수 저장
    @PostMapping("/saveMediProducts")
    @ResponseBody
    public String saveMediProducts(@RequestBody List<Medi_BoardVO> mediProducts) {
      System.out.println("saveMediProducts 실행");
        try {
            System.out.println("Received data: " + mediProducts);
            mediBoardService.saveAllMediProducts(mediProducts);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
   
    @PostMapping("/updateMediProduct")
    @ResponseBody
    public ResponseEntity<String> updateMediProduct(@RequestBody Medi_BoardVO mediProduct) {
        try {
            System.out.println("updateMediProduct called with data: " + mediProduct);
            mediBoardService.updateMediProduct(mediProduct);
            return ResponseEntity.ok("Update success");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body("Update error");
        }
    }

}
