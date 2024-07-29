package org.hj.service;

import org.hj.mapper.LoginMapper;
import org.hj.model.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper lm;

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
}
