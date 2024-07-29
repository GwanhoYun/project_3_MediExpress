package org.hj.service;

import org.hj.mapper.Product_indexMapper;
import org.hj.service.Product_indexService;
import org.hj.model.Product_indexVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


@Service
public class Product_indexServiceImpl implements Product_indexService {
  
  @Autowired
  private Product_indexMapper productMapper;

  @Override
  public List<Product_indexVO> getProducts() {
      return productMapper.getProducts();
  }
  
  @Override
  public Product_indexVO getProductById(int id) {
    return productMapper.getProductById(id);
}

}
