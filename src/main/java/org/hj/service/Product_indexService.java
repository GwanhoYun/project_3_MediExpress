package org.hj.service;

import java.util.List;
import org.hj.model.Product_indexVO;

public interface Product_indexService {
  List<Product_indexVO> getProducts();
  Product_indexVO getProductById(int id);

}
