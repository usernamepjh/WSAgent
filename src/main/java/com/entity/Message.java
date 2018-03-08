package com.entity;

import java.util.Date;

public class Message {

    private  int mid;
    private  String  mtitle;
    private  String mcotent;
    private  String mrecord;
    private  int aid;
    private  int sid;
    private  int zid;
    private  int cid;
    private Date mtime;
    private String mstate;


    public Message(int mid, String mtitle, String mcotent, String mrecord, int aid, int sid, int zid, int cid, Date mtime, String mstate) {
        this.mid = mid;
        this.mtitle = mtitle;
        this.mcotent = mcotent;
        this.mrecord = mrecord;
        this.aid = aid;
        this.sid = sid;
        this.zid = zid;
        this.cid = cid;
        this.mtime = mtime;
        this.mstate = mstate;
    }


    public Message(String mtitle, String mcotent, String mrecord, Date mtime, String mstate) {
        this.mtitle = mtitle;
        this.mcotent = mcotent;
        this.mrecord = mrecord;
        this.mtime = mtime;
        this.mstate = mstate;
    }



    public  Message(){

    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMtitle() {
        return mtitle;
    }

    public void setMtitle(String mtitle) {
        this.mtitle = mtitle;
    }

    public String getMcotent() {
        return mcotent;
    }

    public void setMcotent(String mcotent) {
        this.mcotent = mcotent;
    }

    public String getMrecord() {
        return mrecord;
    }

    public void setMrecord(String mrecord) {
        this.mrecord = mrecord;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getZid() {
        return zid;
    }

    public void setZid(int zid) {
        this.zid = zid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public Date getMtime() {
        return mtime;
    }

    public void setMtime(Date mtime) {
        this.mtime = mtime;
    }

    public String getMstate() {
        return mstate;
    }

    public void setMstate(String mstate) {
        this.mstate = mstate;
    }
}
