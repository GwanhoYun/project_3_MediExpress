package org.hj.service;

import java.util.List;

import org.hj.model.Product_OrderPageVO;

public interface Product_OrderPageService {
  


  //DB에 있는 값 들고오기
  List<Product_OrderPageVO> getAllOrderProducts();
}
