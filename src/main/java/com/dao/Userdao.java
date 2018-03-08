package com.dao;

import com.entity.User;

import java.util.List;

public interface Userdao {

    public List<User> getall();

    public  void adduser(User user);

   public  void deleteuser(User user);

   public void updateuser(User user);


}
