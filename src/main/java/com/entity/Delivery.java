package com.entity;

import java.sql.Date;

public class Delivery {

    private  int did;
    private  int  aid;
    private  String dphone;
    private  String dcode;
    private Date dtime;


    public Delivery(int did, int aid, String dphone, String dcode, Date dtime) {
        this.did = did;
        this.aid = aid;
        this.dphone = dphone;
        this.dcode = dcode;
        this.dtime = dtime;
    }


    public Delivery( String dphone, String dcode, Date dtime) {

        this.dphone = dphone;
        this.dcode = dcode;
        this.dtime = dtime;
    }

    public  Delivery(){

    }


    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getDphone() {
        return dphone;
    }

    public void setDphone(String dphone) {
        this.dphone = dphone;
    }

    public String getDcode() {
        return dcode;
    }

    public void setDcode(String dcode) {
        this.dcode = dcode;
    }

    public Date getDtime() {
        return dtime;
    }

    public void setDtime(Date dtime) {
        this.dtime = dtime;
    }
}
