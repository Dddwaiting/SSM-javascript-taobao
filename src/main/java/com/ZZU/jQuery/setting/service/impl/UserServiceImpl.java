package com.ZZU.jQuery.setting.service.impl;

import com.ZZU.jQuery.setting.mapper.UserMapper;
import com.ZZU.jQuery.setting.pojo.User;
import com.ZZU.jQuery.setting.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User queryUserByUserNameAndPassword(Map<String, Object> map) {
        return userMapper.selectUserByNameAndPassword(map);
    }

    @Override
    public int insertUserByMap(Map<String, Object> map) {
        return userMapper.insertUserByMap(map);
    }

}
