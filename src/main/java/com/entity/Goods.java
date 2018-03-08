package com.entity;

import java.sql.Date;

public class Goods {

    private  int gid;
    private  String  gname;
    private  String gprice;
    private  int gnum;
    private  String gloge;
    private  int cid;


    public Goods(int gid, String gname, String gprice, int gnum, String gloge, int cid) {
        this.gid = gid;
        this.gname = gname;
        this.gprice = gprice;
        this.gnum = gnum;
        this.gloge = gloge;
        this.cid = cid;
    }

    public Goods( String gname, String gprice, int gnum, String gloge) {
        this.gname = gname;
        this.gprice = gprice;
        this.gnum = gnum;
        this.gloge = gloge;

    }

    public  Goods(){

    }



    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getGprice() {
        return gprice;
    }

    public void setGprice(String gprice) {
        this.gprice = gprice;
    }

    public int getGnum() {
        return gnum;
    }

    public void setGnum(int gnum) {
        this.gnum = gnum;
    }

    public String getGloge() {
        return gloge;
    }

    public void setGloge(String gloge) {
        this.gloge = gloge;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }
}
