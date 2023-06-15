package com.cn.qfedu.service;

import com.cn.qfedu.pojo.Room;

import java.util.List;

/**
 * @Author 张伟雄
 * @Date 2023/6/13
 **/
public interface RoomService {
    List<Room> findAllRoom();
    List<Room> findRoomByCondition(String condition);

}
