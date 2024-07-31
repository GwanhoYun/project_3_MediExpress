package org.hj.service;

import java.util.List;
import org.hj.model.Product_DetailVO;

public interface Product_DetailService {
    List<Product_DetailVO> getProductDetailsByProductId(int productId);
}
