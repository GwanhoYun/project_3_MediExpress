package org.hj.service;

import org.hj.mapper.OrderMapper;
import org.hj.model.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public void insertOrder(OrderVO order) {
        orderMapper.insertOrder(order);
    }
}
