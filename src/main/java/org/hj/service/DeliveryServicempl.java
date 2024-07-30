package org.hj.service;

import java.util.List;

import org.hj.mapper.DeliveryMapper;
import org.hj.model.DeliTracVO;
import org.hj.model.DeliveryVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeliveryServicempl implements DeliveryService {
	
	@Autowired
	DeliveryMapper DeMapper;	
	
	public List<DeliveryVO> Deliverylist(DeliveryVO info){
		
		return DeMapper.Deliverylist(info);
	};
	
	public List<DeliveryVO> DeliveryInfo(){
		
		return DeMapper.DeliveryInfo();
	}
	
	public List<DeliTracVO> UserTrac(DeliTracVO info){
		
		return DeMapper.UserTrac(info);
	};
	
	public List<DeliveryVO> UserLocation(DeliveryVO info){
		
		return DeMapper.UserLocation(info);
	};
	
	public int FindD_NO(int o_no) {		
		
		return DeMapper.FindD_NO(o_no);		
	}

	public void insertGPS(DeliveryVO info) {
		
		DeMapper.insertGPS(info.getD_no(), info.getX(), info.getY());
	}
	
	public void StartTrac(DeliveryVO info) {
		
		DeMapper.StartTrac(info); 
	};
	
	public void HubInTrac(DeliveryVO info) {
		
		DeMapper.HubInTrac(info); 
	};
	
	public void HubStartTrac(DeliveryVO info) {
		
		DeMapper.HubStartTrac(info); 
	}
	
	public void DeliveryComTime(DeliveryVO info) {
		
		DeMapper.DeliveryComTime(info); 
	}
	
	public void DeliveryCompletion(DeliveryVO info) {
		
		DeMapper.DeliveryCompletion(info);
	}
}
