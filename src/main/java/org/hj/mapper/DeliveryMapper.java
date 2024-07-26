package org.hj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.hj.model.DeliveryVO;


@Mapper
public interface DeliveryMapper {

		@Select("SELECT d_no, o_no, o_id, o_address " +
		        "FROM public_schema.Delivery_GPS" + " WHERE d_no = #{d_no}" )
		List<DeliveryVO> Deliverylist(DeliveryVO info);
		
		@Select("SELECT o_no, o_id, o_address, d_no, d_complete " +
		        "FROM public_schema.Delivery_GPS")
		List<DeliveryVO> DeliveryInfo();
	   
	    @Update("UPDATE public_schema.Delivery_GPS SET x = #{x}, y = #{y} WHERE d_no = #{d_no}")
	    void insertGPS(@Param("d_no") int d_no, @Param("x") double x, @Param("y") double y);
	    
	    @Update("UPDATE public_schema.Delivery_GPS SET d_complete = true WHERE d_no = #{d_no}")
	    void DeliveryCompletion(DeliveryVO info);
	    
	    @Insert("INSERT INTO public_schema.Medicode_Tracking (d_no) VALUES (#{d_no})")
	    void StartTrac(DeliveryVO info);
	    
	    @Update("UPDATE public_schema.Medicode_Tracking SET hub_name = #{hub_name}, hub_arr = NOW() WHERE d_no = #{d_no}")
	    void HubInTrac(DeliveryVO info);
	    
	    @Update("UPDATE public_schema.Medicode_Tracking SET hub_dep = NOW() WHERE d_no = #{d_no}")
	    void HubStartTrac(DeliveryVO info);
	    
	    @Update("UPDATE public_schema.Medicode_Tracking SET del_comp = NOW() WHERE d_no = #{d_no}")
	    void DeliveryComTime(DeliveryVO info);
	    
}