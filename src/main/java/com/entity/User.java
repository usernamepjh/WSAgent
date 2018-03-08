package com.entity;

import java.util.Date;

public class User {


    private  int uid;
    private  String  uname;
    private  String uphone;
    private  String upwd;
    private Date utime;

    public User(int uid, String uname, String uphone, String upwd, Date utime) {
        this.uid = uid;
        this.uname = uname;
        this.uphone = uphone;
        this.upwd = upwd;
        this.utime = utime;
    }


    public User(String uname, String uphone, String upwd, Date utime) {
        this.uname = uname;
        this.uphone = uphone;
        this.upwd = upwd;
        this.utime = utime;
    }


    public User(){

    }


    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public Date getUtime() {
        return utime;
    }

    public void setUtime(Date utime) {
        this.utime = utime;
    }
}
