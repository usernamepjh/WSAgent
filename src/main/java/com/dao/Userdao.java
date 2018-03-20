package com.dao;

import com.entity.User;

import java.util.List;

public interface Userdao {

    //登录
    public void login(User user);
    //根据用户名获取密码
    public String getpassword(String uname);

    //根据角色获得权限
    public List<User> getalluser_byname(String uname);

    public  void adduser(User user);

    public  void deleteuser(User user);

    public void updateuser(User user);


}
