package com.entity;

public class Jurisdiction {

    private  int jid;
    private  String jname;


    public Jurisdiction(int jid, String jname) {
        this.jid = jid;
        this.jname = jname;
    }

    public Jurisdiction( String jname) {

        this.jname = jname;
    }


    public Jurisdiction( ) {

    }



    public int getJid() {
        return jid;
    }

    public void setJid(int jid) {
        this.jid = jid;
    }

    public String getJname() {
        return jname;
    }

    public void setJname(String jname) {
        this.jname = jname;
    }
}
