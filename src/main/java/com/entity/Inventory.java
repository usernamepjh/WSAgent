package com.entity;

import java.util.Date;

public class Inventory {

    private  int iid;
    private  String  cjinven;
    private  String dlinven;
    private  String dpinven;
    private  int aid;
    private  int zid;
    private Date itime;


    public Inventory(int iid, String cjinven, String dlinven, String dpinven, int aid, int zid, Date itime) {
        this.iid = iid;
        this.cjinven = cjinven;
        this.dlinven = dlinven;
        this.dpinven = dpinven;
        this.aid = aid;
        this.zid = zid;
        this.itime = itime;
    }

    public Inventory( String cjinven, String dlinven, String dpinven,Date itime) {

        this.cjinven = cjinven;
        this.dlinven = dlinven;
        this.dpinven = dpinven;

        this.itime = itime;
    }

    public  Inventory(){

    }

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public String getCjinven() {
        return cjinven;
    }

    public void setCjinven(String cjinven) {
        this.cjinven = cjinven;
    }

    public String getDlinven() {
        return dlinven;
    }

    public void setDlinven(String dlinven) {
        this.dlinven = dlinven;
    }

    public String getDpinven() {
        return dpinven;
    }

    public void setDpinven(String dpinven) {
        this.dpinven = dpinven;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getZid() {
        return zid;
    }

    public void setZid(int zid) {
        this.zid = zid;
    }

    public Date getItime() {
        return itime;
    }

    public void setItime(Date itime) {
        this.itime = itime;
    }
}
