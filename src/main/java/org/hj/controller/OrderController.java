package org.hj.controller;

import org.hj.service.OrderService;
import org.hj.model.LoginVO;
import org.hj.model.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class OrderController {

  @Autowired
  private OrderService orderService;

  @PostMapping("/order")
  @ResponseBody
  public ResponseEntity<Map<String, Object>> submitOrder(@RequestBody OrderVO orderVO, HttpSession session) {
      Map<String, Object> response = new HashMap<>();

      // 로그인 사용자 ID 추출
      LoginVO loginUser = (LoginVO) session.getAttribute("loginUser");
      if (loginUser == null) {
          response.put("success", false);
          response.put("message", "로그인이 필요합니다.");
          return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(response);
      }

      // 주문 정보 설정
      orderVO.setO_id(loginUser.getId());
      orderVO.setO_date(new Date());


      try {
          orderService.insertOrder(orderVO);
          response.put("success", true);
          return ResponseEntity.ok(response);
      } catch (Exception e) {
          response.put("success", false);
          response.put("message", "주문 저장 실패: " + e.getMessage());
          return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
      }
  }
}


