package com.entity;


import java.util.Set;

/**
 * 角色表实体类
 */
public class Role {

    private  int  roleid;
    private  String rolename;
    //用户集合
    private Set<User> userSet;
    //权限集合
    private  Set<Jurisdiction> jurisdictionSet;


    public Set<User> getUserSet() {
        return userSet;
    }

    public void setUserSet(Set<User> userSet) {
        this.userSet = userSet;
    }

    public Set<Jurisdiction> getJurisdictionSet() {
        return jurisdictionSet;
    }

    public void setJurisdictionSet(Set<Jurisdiction> jurisdictionSet) {
        this.jurisdictionSet = jurisdictionSet;
    }

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
