package org.hj.service;

import java.util.List;

import org.hj.model.BuyVO;

public interface BuyService {
  void buyNow(List<BuyVO> buyVOList);
}