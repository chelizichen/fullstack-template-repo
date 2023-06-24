package com.example.demo.mapper;

import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserMapper {
    void insertUser(User user);
    void updateUser(User user);
    void deleteUser(Long userId);
    User getUserById(Long userId);
    List<User> getAllUsers(            @Param("offset") String offset,
                                       @Param("size") String size,
                                       @Param("keyword") String keyword);
    @Select("select * from users where username = #{username} and password = #{password}")
    public List<User> Login(String username,String password);

    List<Object> getTotal( @Param("keyword") String keyword);

}
