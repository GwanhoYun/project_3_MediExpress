package org.hj.service;

import org.hj.mapper.LoginMapper;
import org.hj.mapper.MeBoardMapper; // BoardMapper 추가
import org.hj.model.LoginVO;
import org.hj.model.MeBoardVO; // MeBoardVO 추가
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper lm;

    @Autowired
    private MeBoardMapper boardMapper; // BoardMapper 주입

    @Override
    public LoginVO login(LoginVO member) {
        System.out.println("service=" + member);
        System.out.println("service return=" + lm.login(member));
        return lm.login(member);
    }

    @Override
    public LoginVO getUserById(String id) {
        System.out.println("Fetching user by id: " + id);
        return lm.getUserById(id);
    }

    @Override
    public List<MeBoardVO> getAllBoardsByUserId(String userId) {
        return boardMapper.getAllBoards(userId);
    }
}
