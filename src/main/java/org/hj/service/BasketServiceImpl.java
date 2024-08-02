package org.hj.service;

import org.hj.mapper.BasketMapper;
import org.hj.service.BasketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class BasketServiceImpl implements BasketService {

    @Autowired
    private BasketMapper basketMapper;

    @Transactional
    @Override
    public void updateBasket() {
        basketMapper.updateProductBasket();
    }
}
