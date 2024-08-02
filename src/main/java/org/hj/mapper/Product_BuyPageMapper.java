package org.hj.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hj.model.Product_BuypageVO;

@Mapper
public interface Product_BuyPageMapper {
  List<Product_BuypageVO> getProductList(@Param("userId") String userId);
  List<Product_BuypageVO> getPaymentList(@Param("userId") String userId);
}
