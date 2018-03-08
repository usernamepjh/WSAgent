package com.entity;

public class Role {

    private  int  roleid;
    private  String rolename;

    public Role(int roleid, String rolename) {
        this.roleid = roleid;
        this.rolename = rolename;
    }

    public Role(String rolename) {
        this.rolename = rolename;
    }

    public Role() {

    }

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }
}
