package org.hj.controller;


import java.util.List;

import org.hj.model.DeliTracVO;
import org.hj.model.DeliveryVO;
import org.hj.service.DeliveryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DeliveryController {
  
	
	@Autowired
	DeliveryService DeSevice;
	
	//배송할 내역 (택배기사 전용, 게시판 페이지)
	@GetMapping("/DeliInfo")
	public String MediOrderlist(Model model) {
	
	//System.out.println(DeSevice.DeliveryInfo());
	
	model.addAttribute("DeliInfo", DeSevice.DeliveryInfo());
	return "DELIVERY/DeliveryInfo"; 
	
	}
	
	//배송할 내역 상세보기 (택배기사 전용,맵이 포함된 페이지)
	@GetMapping("/DetailDeliInfo")
	public String MediDelivery(DeliveryVO info, Model model) {
		
	model.addAttribute("Delivery", DeSevice.Deliverylist(info));
	return "DELIVERY/Fordelivery"; 
	
	}
	
	
	//주문자가 배송 추적상황 조회
	@PostMapping("/UserTrac")
	@ResponseBody
	public List<DeliTracVO> MediUserTrac(@RequestBody DeliTracVO info) {
	    List<DeliTracVO> result = DeSevice.UserTrac(info);
	    System.out.println("추적 현황" + result);
	    return result;
	    
	}
	
	//주문자가 보는 택배기사 실시간 위치(좌표값)
	@PostMapping("/UserdeliMap")
	public void MediGPSUpdate(@RequestBody DeliveryVO info) {
		
   	 System.out.println(info);
	    
     	DeSevice.insertGPS(info); 
    
	}
	
	//배송 출발 시간
	@PostMapping("/Startdate")
	public void MediStart(@RequestBody DeliveryVO info) {
		
   	 System.out.println("출발시간" + info);
	    
     	DeSevice.StartTrac(info); 
    
	}
	
	//허브(중간거점)도착 시간 
	@PostMapping("/UpdateHubArrivalTime")
	public void MediHubIn(@RequestBody DeliveryVO info) {
		
   	 System.out.println("허브도착시간" + info);
	    
     	DeSevice.HubInTrac(info); 
    
	}
	
	//허브(중간거점)에서 다시 배송을 시작한 시간
	@PostMapping("/UpdateHubStartTime")
	public void MediHubStart(@RequestBody DeliveryVO info) {
		
   	 System.out.println("허브출발시간" + info);
	    
     	DeSevice.HubStartTrac(info); 
    
	}
	
	//배솧 목적지 도착 시간
	@PostMapping("/DeliveryComTime")
	public void MediDeliveryComTime(@RequestBody DeliveryVO info) {
		
   	 System.out.println("목적지도착시간" + info);
	    
     	DeSevice.DeliveryComTime(info); 
    
	}
	
	//배송 완료 기록을 Delivery_GPS 테이블에 보냄
	@PostMapping("/DeliveryCompletion")
	public void MediDeliveryCompletion(@RequestBody DeliveryVO info) {
	    
     	DeSevice.DeliveryCompletion(info); 
    
	}
}
