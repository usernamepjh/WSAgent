package com.controller;

import com.dao.Messagedao;
import com.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class Messagecontroller {

    @Autowired
    private Messagedao messagedao;


    @ResponseBody
    @RequestMapping("getallmessage")
    //得到代理商的所有信息
    public List<Message> getallmessage(){
        List<Message> getallmessage = messagedao.getallmessage();
        return getallmessage;
    }

    //查看管理员发送的信息
    @ResponseBody
    @RequestMapping("getallsendmessage")
    public List<Message> getallsendmessage(){
        List<Message> getallsendmessage = messagedao.getallsendmessage();
        return getallsendmessage;
    }

    //删除管理员发送的信息
    @ResponseBody
    @RequestMapping("delsendmessage")
    public int delsendmessage(Message message){
       messagedao.delsendmessage(message);
        return 0;
    }

    //发布信息
    @ResponseBody
    @RequestMapping("sendmessagefrom")
    public int sendmessagefrom(Message message){
        message.setMstate("3");
        messagedao.addsendmessage(message);
        return 1;
    }



    @ResponseBody
    @RequestMapping("viamessagefrom")
    //修改审核状态通过
    public int viamessagefrom(Message message){
            message.setMstate("1");
            message.setMreason("");
            messagedao.update_message_mstate(message);
        return 1;
    }

    @ResponseBody
    @RequestMapping("downmessagefrom")
    //修改审核状态驳回
    public int downmessagefrom(Message message){
        message.setMstate("2");
        messagedao.update_message_mstate_down(message);
        return 1;
    }




}
