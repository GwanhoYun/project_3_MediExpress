package org.hj.service;

import org.hj.mapper.Medi_BoardMapper;
import org.hj.model.Medi_BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class Medi_BoardServiceImpl implements Medi_BoardService {
    @Autowired
    private Medi_BoardMapper mediBoardMapper;

    //데이터 베이스에 있는 리스트 불러오기
    @Override
    public List<Medi_BoardVO> getAllMediProducts() { 
        return mediBoardMapper.getAllMediProducts();
    }
    
    //작성한 리스트 저장 
    @Override
    public void saveAllMediProducts(List<Medi_BoardVO> mediProducts) {
        // 여기서 데이터 저장 로직을 구현
      mediBoardMapper.insertMediProducts(mediProducts);
      
      System.out.print(mediProducts.toString());
    }
    
    @Override
    public void insertMediProducts(List<Medi_BoardVO> mediProducts) {
        mediBoardMapper.insertMediProducts(mediProducts);
    }

    @Override
    public void updateMediProduct(Medi_BoardVO mediProduct) {
        mediBoardMapper.updateMediProduct(mediProduct);
    }
    
    @Override
    public void deleteMediProducts(List<Medi_BoardVO> mediProducts) {
      for (Medi_BoardVO product : mediProducts) {
        mediBoardMapper.deleteByMediNo(product.getMediNo());
     }
    }
}
