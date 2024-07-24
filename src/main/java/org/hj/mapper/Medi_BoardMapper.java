package org.hj.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.hj.model.Medi_BoardVO;
import java.util.List;

@Mapper
public interface Medi_BoardMapper {
    List<Medi_BoardVO> getAllMediProducts();
    void insertMediProducts(List<Medi_BoardVO> mediProducts);
    void updateMediProduct(Medi_BoardVO mediProduct);
    void deleteByMediNo(int mediNo);
    
}

  