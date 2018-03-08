package com.controller;


import com.dao.Userdao;
import com.entity.User;
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
    public List<User> getalluser() {
        System.out.println("来了");
        List<User> users = userdao.getall();
        for (User us : users) {
            System.out.println(us.getUname());
        }
        return users;
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
