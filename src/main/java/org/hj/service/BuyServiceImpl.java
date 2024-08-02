package org.hj.service;

import java.util.List;

import org.hj.mapper.BuyMapper;
import org.hj.model.BuyVO;
import org.hj.model.PaymentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuyServiceImpl implements BuyService {

    @Autowired
    private BuyMapper buyMapper;
    

    @Override
    public void buyNow(List<BuyVO> buyVOList) {
        for (BuyVO buyVO : buyVOList) {
            buyMapper.insertBuyData(buyVO);
        }
    }
    
    @Override
    public void paymentNow(List<PaymentVO> paymentVOList) {
        for (PaymentVO paymentVO : paymentVOList) {
            buyMapper.insertPaymentData(paymentVO);
        }
    }
}