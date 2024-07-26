package org.hj.service;

import java.util.List;

import org.hj.mapper.Product_OrderPageMapper;
import org.hj.model.Product_OrderPageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class Product_OrderPageServiceImpl implements Product_OrderPageService {
  
  @Autowired
  Product_OrderPageMapper orderPageMapper;
  
  @Override
  public List<Product_OrderPageVO> getAllOrderProducts(){
    return orderPageMapper.getAllOrderPageProducts();
    
  }

}
