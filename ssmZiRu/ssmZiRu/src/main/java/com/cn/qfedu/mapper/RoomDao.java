package com.cn.qfedu.mapper;

import com.cn.qfedu.pojo.Room;

import java.util.List;

/**
 * @Author 张伟雄
 * @Date 2023/6/13
 **/
public interface RoomDao {
    List<Room> findAllRoom();
    List<Room> findRoomByCondition(String condition);
}
