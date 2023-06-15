package com.cn.qfedu.service.impl;

import com.alibaba.druid.util.StringUtils;
import com.cn.qfedu.mapper.TenantDao;
import com.cn.qfedu.pojo.Tenant;
import com.cn.qfedu.service.TenantService;
import com.cn.qfedu.utils.JsonResult;
import com.cn.qfedu.utils.RandomName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author 张伟雄
 * @Date 2023/6/5
 **/
@Service
public class TenantServiceImpl implements TenantService {
    //dao层容器注入
    @Autowired
    private TenantDao tenantDao;
    @Override
    public JsonResult register(Tenant tenant) {
        //new一个结果返回集
        JsonResult jsonResult = new JsonResult();
        if(tenant!=null){
            //查询用户是否注册
            String s = tenantDao.queryPhone(tenant.getTPhone());
            if(s==null){
                //随机生成用户名
                RandomName randomName = new RandomName();
                String name = randomName.getName();
                tenant.setTNickName(name);
                //新用户注册
                tenantDao.register(tenant);
                jsonResult.setCode(1);
                jsonResult.setInfo("注册成功");

            }else{
                jsonResult.setCode(0);
                jsonResult.setInfo("手机号已经存在");
            }
        }
        return null;
    }

    @Override
    public JsonResult login(Tenant tenant) {
        JsonResult jsonResult = new JsonResult();
        if(tenant!=null){
            Tenant login = tenantDao.login(tenant);
            System.out.println("te"+tenant);
            System.out.println(login);
            if(login.getTNickName().equals(tenant.getTNickName())&&login.getTPassword().equals(tenant.getTPassword())){
                jsonResult.setCode(1);
                jsonResult.setInfo("login success");
            }
            else {
                jsonResult.setCode(0);
                jsonResult.setInfo("login fail");
            }

        }
        return jsonResult;
    }
}
