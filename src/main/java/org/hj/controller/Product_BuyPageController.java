package org.hj.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hj.model.LoginVO;
import org.hj.model.Product_BuypageVO;
import org.hj.service.Product_BuyPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Product_BuyPageController {

  @Autowired
  private Product_BuyPageService productService;

  @GetMapping("/productBuyPage")
  public String getProductList(Model model, HttpSession session) {
      // 세션에서 로그인 정보를 가져오기
      LoginVO loginUser = (LoginVO) session.getAttribute("loginUser");
      // 만약 로그인 없이 GetMapping으로 접근하면 로그인 창으로 이동
      if (loginUser == null) {
          return "redirect:/login";
      }

      // 로그인 사용자 ID 추출
      String loginUserId = loginUser.getId();
      System.out.println("loginUserId from session: " + loginUserId); // 로그로 확인

      // 장바구니에서 제품 목록을 가져와서 모델에 추가
      List<Product_BuypageVO> productList = productService.getProductListByUserId(loginUserId);
      model.addAttribute("productList", productList);

      return "product_BuyPage";
  }

  @GetMapping("/productpayment")
  public String productpayment(Model model, HttpSession session) {
      // 세션에서 로그인 정보를 가져오기
      LoginVO loginUser = (LoginVO) session.getAttribute("loginUser");
      // 만약 로그인 없이 GetMapping으로 접근하면 로그인 창으로 이동
      if (loginUser == null) {
          return "redirect:/login";
      }

      // 로그인 사용자 ID 추출
      String loginUserId = loginUser.getId();
      System.out.println("loginUserId from session: " + loginUserId); // 로그로 확인

      // 결제 목록을 가져와서 모델에 추가
      List<Product_BuypageVO> productList = productService.getPaymentListByUserId(loginUserId);
      model.addAttribute("productList", productList);

      return "Product_Payment";
  }
}
