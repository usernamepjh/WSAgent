package com.entity;

import java.sql.Date;

public class Batch {

    private  int bid;
    private  String  banme;
    private  String bdcode;
    private  int xiangnum;
    private int henum;
    private Date btime;


    public Batch(int bid, String banme, String bdcode, int xiangnum, int henum, Date btime) {
        this.bid = bid;
        this.banme = banme;
        this.bdcode = bdcode;
        this.xiangnum = xiangnum;
        this.henum = henum;
        this.btime = btime;
    }

    public Batch( String banme, String bdcode, int xiangnum, int henum, Date btime) {

        this.banme = banme;
        this.bdcode = bdcode;
        this.xiangnum = xiangnum;
        this.henum = henum;
        this.btime = btime;
    }


    public  Batch(){


    }


    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBanme() {
        return banme;
    }

    public void setBanme(String banme) {
        this.banme = banme;
    }

    public String getBdcode() {
        return bdcode;
    }

    public void setBdcode(String bdcode) {
        this.bdcode = bdcode;
    }

    public int getXiangnum() {
        return xiangnum;
    }

    public void setXiangnum(int xiangnum) {
        this.xiangnum = xiangnum;
    }

    public int getHenum() {
        return henum;
    }

    public void setHenum(int henum) {
        this.henum = henum;
    }

    public Date getBtime() {
        return btime;
    }

    public void setBtime(Date btime) {
        this.btime = btime;
    }
}
