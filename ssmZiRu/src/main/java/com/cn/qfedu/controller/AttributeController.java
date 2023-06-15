package com.cn.qfedu.controller;

import com.cn.qfedu.service.AttributeService;
import com.cn.qfedu.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author 张伟雄
 * @Date 2023/6/6
 **/
@Controller
@RequestMapping("/attr")
public class AttributeController {

    @Autowired
    private AttributeService attributeService;

    @RequestMapping("/show")
    @ResponseBody
    public JsonResult show(){

        JsonResult show = attributeService.show();

        return show;
    }
}
