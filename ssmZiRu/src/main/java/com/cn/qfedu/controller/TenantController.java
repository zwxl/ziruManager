package com.cn.qfedu.controller;

import com.cn.qfedu.pojo.Tenant;
import com.cn.qfedu.service.TenantService;
import com.cn.qfedu.utils.JsonResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author 张伟雄
 * @Date 2023/6/5
 **/
@Controller
@RequestMapping("/tenant")
@Api(value="租户controller",tags = {"租户操作接口"})
public class TenantController {
    @Autowired
    private TenantService tenantService;

    @RequestMapping("/register.do")
    @ResponseBody
    @ApiOperation(value = "租户登录")
    public JsonResult register(@RequestBody Tenant tenant){
        JsonResult result = tenantService.register(tenant);
        return result;
    }

    @ApiOperation(value="租户登录")
    @RequestMapping("/login.do")
    @ResponseBody
    public JsonResult login(Tenant tenant){
        JsonResult result = tenantService.login(tenant);
        return result;
    }
}
