package com.cn.qfedu.pojo;

import lombok.Data;

import java.util.List;
/**

 * @Author 张伟雄
 * @Date 2023/6/6
 **/
@Data
public class Attribute {
    private int attrId;
    private String attrName;
    private List<AttrValue> attrValueList;
}
