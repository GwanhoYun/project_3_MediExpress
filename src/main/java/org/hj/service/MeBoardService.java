package org.hj.service;

import java.util.List;
import java.util.Map;

import org.hj.model.MeBoardVO;

public interface MeBoardService {
    void addBoard(MeBoardVO board);
    void updateBoard(MeBoardVO board);
    void removeBoard(int o_no);
    MeBoardVO getBoardById(int o_no);
    List<MeBoardVO> getAllBoards();
    MeBoardVO getOrder(int orderNo);
    List<MeBoardVO> getAllOrders(); // 추가된 메서드
    MeBoardVO getOrder(Map<String, Object> params);
}
