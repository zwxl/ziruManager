package com.cn.qfedu.pojo;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class Tenant {
    private int tId;
    private String tNickName;
    private String tPhone;
    private String tEmail;
    private String tPassword;

}
