package com.dao;



import com.entity.Message;

import java.util.List;

public interface Messagedao {

    public List<Message> getallmessage();

    public  void addmessage(Message message);

    public  void deletemessage(Message message);

    public void updatemessage(Message message);
     //修改审核状态通过
    public void update_message_mstate(Message message);
    //修改审核状态通过
    public void update_message_mstate_down(Message message);








}
