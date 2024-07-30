package org.hj.service;

import java.util.List;

import org.hj.model.LoginVO;
import org.hj.model.MeBoardVO;

public interface LoginService {
    LoginVO login(LoginVO member);
    LoginVO getUserById(String id); // 추가
    List<MeBoardVO> getAllBoardsByUserId(String userId);
    
}
