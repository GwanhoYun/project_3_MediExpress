package org.hj.service;

import java.util.List;
import org.hj.model.Product_BuypageVO;

public interface Product_BuyPageService {
  public List<Product_BuypageVO> getProductListByUserId(String userId);
  public List<Product_BuypageVO> getPaymentListByUserId(String userId);
}
