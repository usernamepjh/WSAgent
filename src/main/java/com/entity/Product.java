package com.entity;

import java.util.Date;

public class Product{

    private  int pid;
    private  String  pname;
    private Date ptime;
    private  int gid;
    private  String pbz;

    private Goods goods;

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Product() {

    }


    public Product(int pid, String pname, Date ptime, int gid, String pbz) {
        this.pid = pid;
        this.pname = pname;
        this.ptime = ptime;
        this.gid = gid;
        this.pbz = pbz;
    }

    public Product(int pid, String pname, Date ptime, String pbz) {
        this.pid = pid;
        this.pname = pname;
        this.ptime = ptime;
        this.pbz = pbz;
    }

    public Product(int pid, String pname, Date ptime, String pbz, Goods goods) {
        this.pid = pid;
        this.pname = pname;
        this.ptime = ptime;
        this.pbz = pbz;
        this.goods = goods;
    }

    public Product(int pid, String pname, Date ptime, int gid) {
        this.pid = pid;
        this.pname = pname;
        this.ptime = ptime;
        this.gid = gid;
    }




    public Product(String pname, Date ptime, String pbz) {
        this.pname = pname;
        this.ptime = ptime;
        this.pbz = pbz;
    }

    public Product(String pname, Date ptime,  int gid,String pbz) {
        this.pname = pname;
        this.ptime = ptime;
        this.gid = gid;
        this.pbz = pbz;
    }

    public Product(int pid,String pname,String pbz) {
        this.pid = pid;
        this.pname = pname;
        this.pbz = pbz;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Date getPtime() {
        return ptime;
    }

    public void setPtime(Date ptime) {
        this.ptime = ptime;
    }

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getPbz() {
        return pbz;
    }

    public void setPbz(String pbz) {
        this.pbz = pbz;
    }
}
