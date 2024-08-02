package org.hj.service;

import org.hj.mapper.Product_BuyPageMapper;
import org.hj.model.Product_BuypageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class Product_BuyPageServiceImpl implements Product_BuyPageService{
  @Autowired
  private Product_BuyPageMapper productMapper;

  public List<Product_BuypageVO> getProductListByUserId(String userId) {
      return productMapper.getProductList(userId);
  }
  
  public List<Product_BuypageVO> getPaymentListByUserId(String userId) {
    return productMapper.getPaymentList(userId);
}
}
