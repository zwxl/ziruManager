package com.cn.qfedu.TestApi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReviceControler {

    @RequestMapping("/rec")
//    接受url中的参数  设置返回json数据类型
    @ResponseBody
    public String revice(String username){

        System.out.println(username);

        return username;
    }
}
