package com.cn.qfedu.service.impl;

import com.cn.qfedu.mapper.RoomDao;
import com.cn.qfedu.pojo.Room;
import com.cn.qfedu.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 张伟雄
 * @Date 2023/6/13
 **/
@Service
public class RoomServiceImpl implements RoomService {
    @Autowired
    private RoomDao roomDao;
    @Override
    public List<Room> findAllRoom() {
        return roomDao.findAllRoom();
    }

    @Override
    public List<Room> findRoomByCondition(String condition) {
        return roomDao.findRoomByCondition(condition);
    }
}
