package com.cn.qfedu.mapper;

import com.cn.qfedu.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserDao {
    List<User> getUser();
    int selectLogin(User user);
    int register(User user);

    int deleteById(int id);

    Integer save(User user);

    @Select("select * from users where uname like #{uname} limit #{pageNum}, #{pageSize}")
    List<User> selectPage(@Param("pageNum")Integer pageNum, @Param("pageSize")Integer pageSize, @Param("uname")String uname);

    @Select("select count(*) from users where uname like concat('%', #{uname}, '%')")
    Integer selectTotal(@Param("uname")String uname);

    @Select("select * from users where uname=#{uname}")
    User getOne(@Param("uname")String uname);
}
