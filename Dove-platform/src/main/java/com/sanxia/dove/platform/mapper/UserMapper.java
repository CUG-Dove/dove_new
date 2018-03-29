package com.sanxia.dove.platform.mapper;

import com.sanxia.dove.platform.entity.system.User;

public interface UserMapper {

    User loginByAccountAndPsd(String account, String passwordMD5);

    int canInsertUserByUsername(String username);

    int canInsertUserByEmail(String email);

    int canUpdateUser(String username, Long id);

    int insertUser(User user);

    int updateUser(User user);

    int updatePwd(String newPwd, Long id, String currentPwd);


    int deleteUserById(String id);

    int updatePwdById(String encode, String id);

    User findById(String id);
}
