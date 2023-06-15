package com.cn.qfedu.mapper;

import com.cn.qfedu.pojo.User;

public interface UserDao {

    User getUser();
    int selectLogin(User user);
    int register(User user);
}
