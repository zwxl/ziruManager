package com.cn.qfedu.utils;

import java.util.Random;

/**
 * 产生随机的用户名
 * */
public class RandomName {
    public String getName(){
        String abc = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        Random random = new Random();

        String name = "";
        for (int i = 0; i < 5; i++) {
            int index = random.nextInt(abc.length());
            char c = abc.charAt(index);
            name+=c;
        }

        return name;
    }
}
