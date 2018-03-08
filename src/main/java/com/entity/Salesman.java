package com.entity;

import java.util.Date;

public class Salesman {

    private  int sid;
    private  String  sname;
    private  String saddress;
    private  int storenum;
    private int aid;

    public Salesman(int sid, String sname, String saddress, int storenum, int aid) {
        this.sid = sid;
        this.sname = sname;
        this.saddress = saddress;
        this.storenum = storenum;
        this.aid = aid;
    }

    public Salesman(String sname, String saddress, int storenum) {
        this.sname = sname;
        this.saddress = saddress;
        this.storenum = storenum;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

    public int getStorenum() {
        return storenum;
    }

    public void setStorenum(int storenum) {
        this.storenum = storenum;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }



}
