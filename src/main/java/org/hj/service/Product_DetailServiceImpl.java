package org.hj.service;

import java.util.List;
import org.hj.mapper.Product_DetailMapper;
import org.hj.model.Product_DetailVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Product_DetailServiceImpl implements Product_DetailService {
    @Autowired
    private Product_DetailMapper productDetailMapper;

    @Override
    public List<Product_DetailVO> getProductDetailsByProductId(int productId) {
        return productDetailMapper.getProductDetailsByProductId(productId);
    }
}
