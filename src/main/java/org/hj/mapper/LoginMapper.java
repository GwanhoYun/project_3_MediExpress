package org.hj.mapper;

import org.hj.model.LoginVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {

    LoginVO login(LoginVO loginVO);

    LoginVO getUserById(String id); // 이 메서드는 필요할 수 있으니 유지
}
