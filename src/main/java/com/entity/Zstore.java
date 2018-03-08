package com.entity;

import java.util.Date;

public class Zstore {
    private  int zid;
    private  String  zname;
    private  String zphone;
    private  String zaddress;
    private int sid;

    public Zstore(int zid, String zname, String zphone, String zaddress, int sid) {
        this.zid = zid;
        this.zname = zname;
        this.zphone = zphone;
        this.zaddress = zaddress;
        this.sid = sid;
    }

    public Zstore(String zname, String zphone, String zaddress) {
        this.zname = zname;
        this.zphone = zphone;
        this.zaddress = zaddress;
    }

    public int getZid() {
        return zid;
    }

    public void setZid(int zid) {
        this.zid = zid;
    }

    public String getZname() {
        return zname;
    }

    public void setZname(String zname) {
        this.zname = zname;
    }

    public String getZphone() {
        return zphone;
    }

    public void setZphone(String zphone) {
        this.zphone = zphone;
    }

    public String getZaddress() {
        return zaddress;
    }

    public void setZaddress(String zaddress) {
        this.zaddress = zaddress;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }
}
