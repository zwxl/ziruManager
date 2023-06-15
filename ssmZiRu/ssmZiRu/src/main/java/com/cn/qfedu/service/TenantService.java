package com.cn.qfedu.service;

import com.cn.qfedu.pojo.Tenant;
import com.cn.qfedu.utils.JsonResult;

/**
 * @Author 张伟雄
 * @Date 2023/6/5
 **/

public interface TenantService {
    JsonResult register(Tenant tenant);
    JsonResult login(Tenant tenant);
}
