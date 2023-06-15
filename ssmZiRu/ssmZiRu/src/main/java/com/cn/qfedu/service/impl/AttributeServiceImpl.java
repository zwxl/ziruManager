package com.cn.qfedu.service.impl;

import com.cn.qfedu.mapper.AttributeDao;
import com.cn.qfedu.pojo.Attribute;
import com.cn.qfedu.service.AttributeService;
import com.cn.qfedu.utils.JsonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 张伟雄
 * @Date 2023/6/6
 **/
@Service
public class AttributeServiceImpl implements AttributeService {
    @Autowired
    private AttributeDao attributeDao;
    @Override
    public JsonResult show() {

        List<Attribute> attr = attributeDao.findAttr();

        JsonResult jsonResult = new JsonResult();

        jsonResult.setCode(1);
        jsonResult.setInfo(attr);

        return jsonResult;
    }
}
