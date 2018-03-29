package com.sanxia.dove.platform.core.shiro;

import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import com.sanxia.dove.platform.entity.system.User;
import com.sanxia.dove.platform.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm{

    @Autowired
    private UserService userService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = principalCollection.getPrimaryPrincipal().toString();
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        String password = new String(token.getPassword());
        User user = userService.login(username, password);
        if(user == null){
            throw new AuthenticationException("用户名或密码错误");
        }else{
            Subject currentUser = SecurityUtils.getSubject();
            //将当前用户的session值传入platformBaseController的SESSION_USER
            currentUser.getSession().setAttribute(PlatformBaseController.SESSION_USER, user);
            // 先对比username,然后对比password（这里的password是从数据库获取的），和token（filter中登陆时生成的）中生成的password做对比
            //如果相同就允许登陆，不相同则抛出异常
            // 如果验证成功，最终返回的信息AuthenticationInfo的值与传入的第一个字段的值相同（这里怆传入的是username，所以返回的是username）
            AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(username, password, "databaseRealm");
            return authcInfo;
        }

    }
}
