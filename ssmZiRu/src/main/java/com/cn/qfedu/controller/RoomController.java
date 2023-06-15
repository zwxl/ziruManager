package com.cn.qfedu.controller;

import com.cn.qfedu.pojo.Room;
import com.cn.qfedu.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author 张伟雄
 * @Date 2023/6/13
 **/
@Controller
@CrossOrigin
public class RoomController {
    @Autowired
    private RoomService roomService;
    @RequestMapping("/findRooms")
    @ResponseBody
    public List<Room> findAllRoom(){
        return roomService.findAllRoom();
    }

    @RequestMapping("/findBy")
    @ResponseBody
    public List<Room> findBy(String condition){
        System.out.println("condition"+condition);
        if(condition==null||condition.equals(" "))
        return roomService.findAllRoom();
        else{
            return roomService.findRoomByCondition(condition);
        }
    }
}
