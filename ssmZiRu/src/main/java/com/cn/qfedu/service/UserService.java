package com.cn.qfedu.service;

import com.cn.qfedu.pojo.User;

public interface UserService {

    User getUser();
    int selectLogin(User user);
    int register(User user);
}
