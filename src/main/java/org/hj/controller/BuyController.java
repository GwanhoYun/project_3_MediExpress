package org.hj.controller;

import java.util.List;

import org.hj.model.BuyVO;
import org.hj.model.PaymentVO;
import org.hj.service.BuyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BuyController {

    @Autowired
    private BuyService buyService;

    @PostMapping("/buyNow")
    @ResponseBody
    public ResponseEntity<String> buyNow(@RequestBody List<BuyVO> buyVOList) {
        // 요청 본문을 출력하여 확인
        System.out.println("Received Payload: " + buyVOList);

        try {
            // BuyService를 사용하여 데이터베이스에 데이터 저장
            buyService.buyNow(buyVOList);
            return ResponseEntity.ok("Success");
        } catch (Exception e) {
            e.printStackTrace(); // 예외 메시지를 출력하여 원인을 확인
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error");
        }
    }
    
    @PostMapping("/paymentNow")
    @ResponseBody
    public ResponseEntity<String> paymentNow(@RequestBody List<PaymentVO> paymentVOList) {
        // 요청 본문을 출력하여 확인
        System.out.println("Received Payload: " + paymentVOList);

        try {
            // BuyService를 사용하여 데이터베이스에 데이터 저장
            buyService.paymentNow(paymentVOList);
            return ResponseEntity.ok("Success");
        } catch (Exception e) {
            e.printStackTrace(); // 예외 메시지를 출력하여 원인을 확인
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error");
        }
    }

    
 
    
}
