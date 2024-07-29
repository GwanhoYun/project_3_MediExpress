package org.hj.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.hj.mapper.MeBoardMapper;
import org.hj.model.MeBoardVO;

@Service
public class MeBoardServiceImpl implements MeBoardService {
    
    @Autowired
    private MeBoardMapper boardMapper;

    @Override
    public void addBoard(MeBoardVO board) {
        boardMapper.insertBoard(board);
    }

    @Override
    public void updateBoard(MeBoardVO board) {
        boardMapper.updateBoard(board);
    }

    @Override
    public void removeBoard(int o_no) {
        boardMapper.deleteBoard(o_no);
    }

    @Override
    public MeBoardVO getBoardById(int o_no) {
        return boardMapper.getBoardById(o_no);
    }

    @Override
    public List<MeBoardVO> getAllBoards() {
        return boardMapper.getAllBoards();
    }

    @Override
    public MeBoardVO getOrder(int orderNo) {
        return boardMapper.getOrder(orderNo);
    }

    @Override
    public List<MeBoardVO> getAllOrders() {
        return boardMapper.getAllOrders();
    }
}
