package com.cn.qfedu.service.impl;

import com.cn.qfedu.mapper.UserDao;
import com.cn.qfedu.pojo.User;
import com.cn.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;


    @Override
    public User getUser() {
        User user = userDao.getUser();

        return user;
    }

    @Override
    public int selectLogin(User user) {
        return userDao.selectLogin(user);
    }

    @Override
    public int register(User user) {
        return userDao.register(user);
    }
}
