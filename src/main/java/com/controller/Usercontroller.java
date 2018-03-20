package com.controller;


import com.dao.Userdao;
import com.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class Usercontroller {

    @Autowired
    private Userdao userdao;

    @ResponseBody
    @RequestMapping("getalluser")
    public List<User> getalluser(User user){
        List<User> users = userdao.getalluser_byname(user.getUname());
        for (User us : users) {
            System.out.println(us.getUname());
        }
        return users;
    }


    //登录
    @ResponseBody
    @RequestMapping("login")
    public int login(User user){
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token=new UsernamePasswordToken(user.getUname(),user.getUpwd());
        try {
            subject.login(token);
        } catch (AuthenticationException e) {
            return 1;
        }
        return 0;
    }


















//      @ResponseBody
//      @RequestMapping("deleteuser")
//      public  Integer deleteuser(User user){
//        userdao.deleteuser(user);
//        return  new Integer(1);
//      }
//
//
//    @ResponseBody
//    @RequestMapping("updateuser")
//    public  Integer updateuser(User user){
//        userdao.updateuser(user);
//        return  new Integer(1);
//    }
//
//
//
//
//    @ResponseBody
//    @RequestMapping("deleteuser")
//    public  Integer adduser(User user){
//        userdao.adduser(user);
//        return  new Integer(1);
//    }

}
