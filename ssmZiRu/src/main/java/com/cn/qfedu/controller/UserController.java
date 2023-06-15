package com.cn.qfedu.controller;

import com.cn.qfedu.pojo.User;
import com.cn.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@CrossOrigin
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/user")
    @ResponseBody
    public User getUser(){

        User user = userService.getUser();
        return user;
    }

    @PostMapping("/login")
    @ResponseBody
    public int  login(@RequestBody User user){
        System.out.println(user);
        return userService.selectLogin(user);
    }

    @PostMapping("/register")
    @ResponseBody
    public int  register(@RequestBody User user){
        if(userService.selectLogin(user)>=1){
            return 0;
        }
        else{
            userService.register(user);
            return 1;
        }
    }
}
