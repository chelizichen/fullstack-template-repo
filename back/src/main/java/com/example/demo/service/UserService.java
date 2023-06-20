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

    public List<User> getAllUsers() {
        return userMapper.getAllUsers();
    }
}
