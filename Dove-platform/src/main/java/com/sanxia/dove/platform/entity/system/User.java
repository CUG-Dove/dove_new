/**
 * Project Name:dove
 * File Name:User.java
 * Package Name:com.sanxia.dove.platform.entity.system
 * Date:2018-3-2 9:43
 *
 */

package com.sanxia.dove.platform.entity.system;

import java.io.File;
import java.io.Serializable;
import java.sql.Blob;

/**
 *  Description:<br/>
 *  Date: 2018年3月2日 上午 9:55
 *  @author ly
 *  @version
 *  @see
 */

public class User implements Serializable{

    private static final long serialVersionUID = 375767242322918066L;

    private Long id;
    private String username;
    private String password;
    private String isAdmin;
    private Long roleId;
    private byte[] profilePicture;
    private String fullName;
    private String phone;
    private String email;
    private String company;
    private String url;
    private String location;
    private String remark;
    private String createTm;
    private String modifyTm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(String isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public byte[] getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(byte[] profilePicture) {
        this.profilePicture = profilePicture;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompany() {
        return company;
    }
    public void setCompany(String company) {
        this.company = company;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getCreateTm() {
        return createTm;
    }

    public void setCreateTm(String createTm) {
        this.createTm = createTm;
    }

    public String getModifyTm() {
        return modifyTm;
    }

    public void setModifyTm(String modifyTm) {
        this.modifyTm = modifyTm;
    }
}
