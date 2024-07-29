package org.hj.mapper;

import java.util.List;
import org.hj.model.MeBoardVO;

public interface MeBoardMapper {
    void insertBoard(MeBoardVO board);
    void updateBoard(MeBoardVO board);
    void deleteBoard(int o_no);
    MeBoardVO getBoardById(int o_no);
    List<MeBoardVO> getAllBoards();
    MeBoardVO getOrder(int orderNo); // 추가된 메서드
    List<MeBoardVO> getAllOrders(); // 추가된 메서드
}
