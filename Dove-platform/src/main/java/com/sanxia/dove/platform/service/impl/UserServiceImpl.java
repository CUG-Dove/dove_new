package com.sanxia.dove.platform.service.impl;

import com.sanxia.dove.common.core.dto.MapDto;
import com.sanxia.dove.common.core.utils.DoveConstants;
import com.sanxia.dove.common.utils.DateUtils;
import com.sanxia.dove.common.utils.MD5Tools;
import com.sanxia.dove.platform.entity.system.User;
import com.sanxia.dove.platform.mapper.UserMapper;
import com.sanxia.dove.platform.service.LogService;
import com.sanxia.dove.platform.service.UserService;
import com.sanxia.dove.platform.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.Map;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private LogService logService;

    @Autowired
    private UserMapper userMapper;

    /**
     * 判断用户是否可以登陆，不能则返回null
     * @param account
     * @param password
     * @return
     */

    @Override
    public User login(String account, String password) {
        String passwordMD5 = MD5Tools.encode(password);
        User user = userMapper.loginByAccountAndPsd(account, passwordMD5);
        return user;
    }

    /**
     *  注册
     * @param user
     * @return data
     */
    @Override
    public MapDto register(User user) {
        MapDto data = new MapDto();
        String now = DateUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss");
        if (user.getId() == null){
            if (userMapper.canInsertUserByUsername(user.getUsername()) > 0 ){
                data.errorMsg("该用户名已经存在.");
            } if (userMapper.canInsertUserByEmail(user.getEmail()) > 0) {
                data.errorMsg("邮箱无效或已经注册过.");
            }else {
                user.setCreateTm(now);
                user.setPassword(MD5Tools.encode(user.getPassword()));
                userMapper.insertUser(user);
                //增加权限 还待完成...

                logService.addLog(null,null, "新注册账号" + user.getUsername(), "用户操作");
            }

        }
        return data;
    }

    @Override
    public Boolean validateUserName(String username) {

        if ((userMapper.canInsertUserByUsername(username)) > 1){
            return Boolean.TRUE;
        } else {
            return Boolean.FALSE;
        }
    }

    @Override
    public Boolean validateEmail(String email) {
        if ((userMapper.canInsertUserByEmail(email)) > 1){
            return Boolean.TRUE;
        }else {
            return Boolean.FALSE;
        }
    }

    /**
     * 更新用户信息
     * @param user
     * @return
     */
    @Override
    public MapDto saveOrUpdate(User user) {
        MapDto mapDto = new MapDto();
        String now = DateUtils.format(new Date(), "yyyy-MM-dd HH:mm:ss");
        user.setModifyTm(now);
        userMapper.updateUser(user);
        //增加权限
        //...
        logService.addLog(user.getId(), null, "修改帐号：" + user.getUsername(), "系统管理");
        return mapDto;
    }

    @Override
    public MapDto deleteById(String id, User user) {
        User target = userMapper.findById(id);
        userMapper.deleteUserById(id);
        logService.addLog(user.getId(), null, "删除账号" + target.getUsername(),"系统管理");
        return new MapDto();
    }

    @Override
    public MapDto updatePwd(String username, String currentPwd, String newPwd, User user) {
        MapDto mapDto = new MapDto();
        String p1 = MD5Tools.encode(currentPwd);
        String p2 = MD5Tools.encode(newPwd);
        int i = userMapper.updatePwd(p2, user.getId(), p1);
        if (i != 1){
            mapDto.errorMsg("密码不正确，修改失败");
        }
        return mapDto;
    }

}
