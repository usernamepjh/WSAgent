package com.entity;


import java.sql.Date;

public class Agent {

    private  int aid;
    private  String  aname;
    private  String aphone;
    private  String aaddress;
     private Date atime;


    public Agent(int aid, String aname, String aphone, String aaddress, Date atime) {
        this.aid = aid;
        this.aname = aname;
        this.aphone = aphone;
        this.aaddress = aaddress;
        this.atime = atime;
    }

    public Agent(String aname, String aphone, String aaddress, Date atime) {
        this.aid = aid;
        this.aname = aname;
        this.aphone = aphone;
        this.aaddress = aaddress;
        this.atime = atime;
    }


    public  Agent(){

    }


    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAphone() {
        return aphone;
    }

    public void setAphone(String aphone) {
        this.aphone = aphone;
    }

    public String getAaddress() {
        return aaddress;
    }

    public void setAaddress(String aaddress) {
        this.aaddress = aaddress;
    }

    public Date getAtime() {
        return atime;
    }

    public void setAtime(Date atime) {
        this.atime = atime;
    }
}
