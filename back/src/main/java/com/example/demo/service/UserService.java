package com.example.demo.service;

import com.example.demo.entity.User;
import com.example.demo.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User getUserById(Long userId) {
        return userMapper.getUserById(userId);
    }

    public void createUser(User user) {
        // Perform any necessary validations or business logic
        userMapper.insertUser(user);
    }

    public void updateUser(User user) {
        // Perform any necessary validations or business logic
        userMapper.updateUser(user);
    }

    public void deleteUser(Long userId) {
        // Perform any necessary validations or business logic
        userMapper.deleteUser(userId);
    }

    public List<User> getAllUsers(String offset,String size,String keyword) {
        return userMapper.getAllUsers(offset, size, keyword);
    }

    public Integer Login(User user){
        System.out.println(user.getUsername() + user.getPassword());
        List<User> login = userMapper.Login(user.getUsername(),user.getPassword());
        System.out.println(login);
        if(login.size()>0){
            return 1;
        }else
        {
            return 0;
        }
    }
    public List<Object> getTotal(String keyword){
        return userMapper.getTotal(keyword);
    }

}
