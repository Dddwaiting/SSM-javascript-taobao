package com.ZZU.jQuery.setting.service;

import com.ZZU.jQuery.setting.pojo.User;

import java.util.Map;

public interface UserService {

    /**
     * 根据用户名和密码来查询用户信息
     * @param map
     * @return
     */
    User queryUserByUserNameAndPassword(Map<String,Object> map);

    /**
     * 注册用户
     * @param map
     * @return
     */
    int insertUserByMap(Map<String,Object> map);
}
