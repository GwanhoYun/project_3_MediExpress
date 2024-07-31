package org.hj.mapper;

import java.util.List;
import org.hj.model.Product_DetailVO;

public interface Product_DetailMapper {
    List<Product_DetailVO> getProductDetailsByProductId(int productId);
}
