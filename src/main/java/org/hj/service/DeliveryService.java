package org.hj.service;

import java.util.List;

import org.hj.model.DeliTracVO;
import org.hj.model.DeliveryVO;

public interface DeliveryService {
	
	public List<DeliveryVO> Deliverylist(DeliveryVO info);
	
	public List<DeliveryVO> DeliveryInfo();
	
	public List<DeliTracVO> UserTrac(DeliTracVO info);
	
	public int FindD_NO(int o_no);

	public void insertGPS(DeliveryVO info);
	
	public void StartTrac(DeliveryVO info);
	
	public void HubInTrac(DeliveryVO info);
	
	public void HubStartTrac(DeliveryVO info);
	
	public void DeliveryComTime(DeliveryVO info);
	
	public void DeliveryCompletion(DeliveryVO info);
	
}
