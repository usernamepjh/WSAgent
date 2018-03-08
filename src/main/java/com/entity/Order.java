package com.entity;

import java.util.Date;

public class Order {

    private  int oid;
    private  String  aname;
    private  String zname;
    private  String gname;
    private  int gnum;
    private  double gprice;
    private String zaddress;

    public Order(int oid, String aname, String zname, String gname, int gnum, double gprice, String zaddress) {
        this.oid = oid;
        this.aname = aname;
        this.zname = zname;
        this.gname = gname;
        this.gnum = gnum;
        this.gprice = gprice;
        this.zaddress = zaddress;
    }

    public Order( String aname, String zname, String gname, int gnum, double gprice, String zaddress) {

        this.aname = aname;
        this.zname = zname;
        this.gname = gname;
        this.gnum = gnum;
        this.gprice = gprice;
        this.zaddress = zaddress;
    }


    public  Order(){

    }


    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getZname() {
        return zname;
    }

    public void setZname(String zname) {
        this.zname = zname;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public int getGnum() {
        return gnum;
    }

    public void setGnum(int gnum) {
        this.gnum = gnum;
    }

    public double getGprice() {
        return gprice;
    }

    public void setGprice(double gprice) {
        this.gprice = gprice;
    }

    public String getZaddress() {
        return zaddress;
    }

    public void setZaddress(String zaddress) {
        this.zaddress = zaddress;
    }
}
