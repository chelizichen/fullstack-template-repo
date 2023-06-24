package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/users")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/{userId}")
    public User getUserById(@PathVariable Long userId) {
        return userService.getUserById(userId);
    }

    @PostMapping
    public void createUser(@RequestBody User user) {
        userService.createUser(user);
    }

    @PutMapping("/{userId}")
    public void updateUser(@PathVariable Long userId, @RequestBody User user) {
        user.setId(userId);
        userService.updateUser(user);
    }

    @DeleteMapping("/{userId}")
    public void deleteUser(@PathVariable Long userId) {
        userService.deleteUser(userId);
    }

    @GetMapping
    public List<User> getAllUsers(@RequestParam
                                              Map<String,Object> attribute) {
        String keyword = (String) attribute.get("keyword");
        String offset = (String) attribute.get("offset");
        String size = (String) attribute.get("size");
        System.out.println("获取用户列表");
        return userService.getAllUsers(offset,size,keyword);
    }

    @GetMapping("total")
    public List<Object> getTotal(@RequestParam Map<String,Object> attribute) {
        System.out.println(attribute);
        String keyword = (String) attribute.get("keyword");
        return userService.getTotal(keyword);
    }


    @PostMapping("login")
    public Integer login(@RequestBody  User user){

        return userService.Login(user);
    }
}
