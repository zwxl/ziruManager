package com.cn.qfedu.service;

import com.cn.qfedu.pojo.User;

import java.util.List;

public interface UserService {

    List<User> getUser();
    int selectLogin(User user);
    int register(User user);

    int deleteById(int id);

    int save(User user);

    User getOne(String name);
}
