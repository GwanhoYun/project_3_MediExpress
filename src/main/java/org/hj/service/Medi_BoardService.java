package org.hj.service;

import org.hj.model.Medi_BoardVO;
import java.util.List;

public interface Medi_BoardService {
    List<Medi_BoardVO> getAllMediProducts(); //데이터 베이스에 모든 값을 다 들고옴
    void saveAllMediProducts(List<Medi_BoardVO> mediProducts); 
    void insertMediProducts(List<Medi_BoardVO> mediProducts);
    void updateMediProduct(Medi_BoardVO mediProduct);
    void deleteMediProducts(List<Medi_BoardVO> mediProducts);
}
  