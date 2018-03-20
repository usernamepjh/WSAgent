package com.entity;

import java.util.Set;

/**
 * 权限实体类
 */
public class Jurisdiction {

    private  int jid;
    private  String jname;
    private  int encoding;
    private  int press;
    //角色集合
    private Set<Role> roleSet;

    public Set<Role> getRoleSet() {
        return roleSet;
    }

    public void setRoleSet(Set<Role> roleSet) {
        this.roleSet = roleSet;
    }

    public Jurisdiction() {
    }


    public Jurisdiction(int jid, String jname, int encoding, int press) {
        this.jid = jid;
        this.jname = jname;
        this.encoding = encoding;
        this.press = press;
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

    public int getEncoding() {
        return encoding;
    }

    public void setEncoding(int encoding) {
        this.encoding = encoding;
    }

    public int getPress() {
        return press;
    }

    public void setPress(int press) {
        this.press = press;
    }
}
