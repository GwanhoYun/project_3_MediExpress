package org.hj.mapper;


import org.hj.model.Product_indexVO;
import java.util.List;

public interface Product_indexMapper {
  
  List<Product_indexVO> getProducts();
  Product_indexVO getProductById(int id);

}
