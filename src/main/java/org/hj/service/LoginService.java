package org.hj.service;

import org.hj.model.LoginVO;

public interface LoginService {
    LoginVO login(LoginVO member);
    LoginVO getUserById(String id); // 추가
}
