package org.hj.mapper;

import org.hj.model.BuyVO;
import org.hj.model.PaymentVO;

public interface BuyMapper {
  void insertBuyData(BuyVO buyVO);
  void insertPaymentData(PaymentVO paymentVO);
}