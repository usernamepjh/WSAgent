package com.dao;



import com.entity.Message;

import java.util.List;

public interface Messagedao {

    //查看代理商发送的信息
    public List<Message> getallmessage();

    //查看审核员发送的信息
    public List<Message> getallsendmessage();
     //添加管理员发布信息
    public  void addsendmessage(Message message);
     //删除管理员发布信息
    public  void delsendmessage(Message message);

    public void updatemessage(Message message);
     //修改审核状态通过
    public void update_message_mstate(Message message);
    //修改审核状态通过
    public void update_message_mstate_down(Message message);








}
