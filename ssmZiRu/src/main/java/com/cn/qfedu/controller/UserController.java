package com.cn.qfedu.controller;

import com.cn.qfedu.mapper.UserDao;
import com.cn.qfedu.pojo.User;
import com.cn.qfedu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@CrossOrigin
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDao userDao;

    @RequestMapping("/user")
    @ResponseBody
    public List<User> getUser(){
        List<User> user = userService.getUser();
        return user;
    }

    @RequestMapping("/findone")
    @ResponseBody
    public User findById(@RequestParam("uname") String name){
        User user = userService.getOne(name);
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

    @DeleteMapping("{id}")
    @ResponseBody
    public int deleteUser(@PathVariable int id){
        return userService.deleteById(id);
    }

    @PostMapping("/save")
    @ResponseBody
    public int save(@RequestBody User user) {
        // 新增或者更新
        System.out.println(user);
        return userService.save(user);
    }

    @GetMapping("/page")
    @ResponseBody
    public Map<String, Object> findPage(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam String uname) {
        pageNum = (pageNum - 1) * pageSize;
        uname = "%" + uname + "%";
        List<User> data = userDao.selectPage(pageNum, pageSize, uname);
        Integer total = userDao.selectTotal(uname);
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }
}
