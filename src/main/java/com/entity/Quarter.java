package com.entity;

import java.util.Date;

public class Quarter {

    private  int qid;
    private  String  qname;
    private  String qnum;
    private  double qmoney;
    private Date qtime;


    public Quarter(int qid, String qname, String qnum, double qmoney, Date qtime) {
        this.qid = qid;
        this.qname = qname;
        this.qnum = qnum;
        this.qmoney = qmoney;
        this.qtime = qtime;
    }

    public Quarter(String qname, String qnum, double qmoney, Date qtime) {

        this.qname = qname;
        this.qnum = qnum;
        this.qmoney = qmoney;
        this.qtime = qtime;
    }

    public  Quarter(){


    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public String getQname() {
        return qname;
    }

    public void setQname(String qname) {
        this.qname = qname;
    }

    public String getQnum() {
        return qnum;
    }

    public void setQnum(String qnum) {
        this.qnum = qnum;
    }

    public double getQmoney() {
        return qmoney;
    }

    public void setQmoney(double qmoney) {
        this.qmoney = qmoney;
    }

    public Date getQtime() {
        return qtime;
    }

    public void setQtime(Date qtime) {
        this.qtime = qtime;
    }
}
