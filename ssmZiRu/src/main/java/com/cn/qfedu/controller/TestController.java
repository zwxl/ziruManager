package com.cn.qfedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author 张伟雄
 * @Date 2023/6/8
 **/
@Controller
@CrossOrigin
public class TestController {
    @RequestMapping("/test1")
    @ResponseBody
    public String test1(){
        return "test11111";
    }
}
