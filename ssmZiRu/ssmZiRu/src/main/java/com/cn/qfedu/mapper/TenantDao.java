package com.cn.qfedu.mapper;

import com.cn.qfedu.pojo.Tenant;

public interface TenantDao {
    void register(Tenant tenant);
    String queryPhone(String phone);
    Tenant login(Tenant tenant);
}
