package com.entity;

import java.util.Date;

public class Message {

    private  int mid;    //ID
    private  String  mtitle;    //标题
    private  String mcotent;    //内容
    private  String mrecord;    //信息记录
    private  int aid;    //代理商
    private  int sid;    //业务员
    private  int zid;    //终端店铺
    private  int cid;    //消费者
    private Date mtime;    //时间
    private String mstate;    //状态
    private String mreason;   //驳回理由
    private Agent agent;      //代理商


    public Agent getAgent() {
        return agent;
    }

    public void setAgent(Agent agent) {
        this.agent = agent;
    }

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

    public Message(int mid, String mtitle, String mcotent, String mrecord, int aid, int sid, int zid, int cid, Date mtime, String mstate, String mreason) {
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
        this.mreason = mreason;
    }

    public  Message(){

    }

    public String getMreason() {
        return mreason;
    }

    public void setMreason(String mreason) {
        this.mreason = mreason;
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
