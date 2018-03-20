package com.shiro;

import com.dao.Userdao;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class Myrealm extends AuthorizingRealm{

    @Autowired
    private Userdao userdao;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {

        return null;
    }

    //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
                UsernamePasswordToken token1= (UsernamePasswordToken) token;
                String uname=token1.getUsername();
                String upwd=userdao.getpassword(uname);
        SimpleAuthenticationInfo info=new SimpleAuthenticationInfo(uname,upwd,this.getName());
        return info;
    }



}
