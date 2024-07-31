package org.hj.mapper;


import org.hj.model.Product_indexVO;
import java.util.List;

public interface Product_indexMapper {
  
  List<Product_indexVO> getProducts();
  
  //상세 페이지 누르면 그 페이지로 이동하기
  Product_indexVO getProductById(int id);

}
