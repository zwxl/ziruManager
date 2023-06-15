package com.cn.qfedu.service.impl;

import com.cn.qfedu.mapper.UserDao;
import com.cn.qfedu.pojo.User;
import com.cn.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;


    @Override
    public List<User> getUser() {
        List<User> user = userDao.getUser();

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

    @Override
    public int deleteById(int id) {
        return userDao.deleteById(id);
    }

    @Override
    public int save(User user) {
        return userDao.save(user);
    }

    @Override
    public User getOne(String name) {
        return userDao.getOne(name);
    }
}
