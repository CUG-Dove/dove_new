/**
 * Project Name:Dove-platform
 * File Name:userSettingsControl.java
 * Package Name:com.sanxia.dove.platform.controller.userCenter
 * Date:2018年3月12日下午19:38
 *
 */

package com.sanxia.dove.platform.controller.userCenter;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.sanxia.dove.common.core.dto.MapDto;
import com.sanxia.dove.common.utils.DateUtils;
import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import com.sanxia.dove.platform.core.utils.PlatformConstants;
import com.sanxia.dove.platform.core.utils.PropertiesUtils;
import com.sanxia.dove.platform.entity.system.User;
import com.sanxia.dove.platform.service.UserService;


import jdk.internal.util.xml.impl.Input;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Decoder;

import javax.security.auth.Subject;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.*;
import java.net.URLDecoder;
import java.sql.Blob;
import java.util.Date;
import java.util.Map;

/**
 * 用户设置
 */

@Controller
@RequestMapping("/settings")
public class UserSettingsControl extends PlatformBaseController {

    @Autowired
    private UserService userService;

    /*
    * account page
    * */
    @RequestMapping("/account")
    public String toUserCenterAccountPage(){
        return "userCenter/account";
    }

    /**
     *  profile page
     * @return
     */
    @RequestMapping("/profile")
    public String toUserCenterProfilePage(){
        return "userCenter/profile";
    }

    @RequestMapping("/account/updatePwd")
    @ResponseBody
    public MapDto UpdatePwd(@RequestParam(value = "old_password", required = false ) String old_password,
                            @RequestParam(value="new_password", required = false ) String new_password){
        MapDto mapDto = new MapDto();
        System.out.println("进入修改密码后台。。。");
        if (getUser() == null) {
            return null;
        } else {
            String username = getUser().getUsername();
            return userService.updatePwd(username, old_password, new_password, getUser());
        }

    }

    @RequestMapping("/profile/updateProfile")
    @ResponseBody
    public MapDto updateProfile(@RequestParam(value = "user_full_name" )String fullName,
                                @RequestParam(value = "user_profile_remark")String remark,
                                @RequestParam(value = "user_profile_url")String url,
                                @RequestParam(value = "user_profile_company") String company,
                                @RequestParam(value = "user_profile_localtion") String location){
        MapDto mapDto = new MapDto();
        User currentuser = getUser();
       /* User updatingUser = new User();
        updatingUser.setId(currentuser.getId());
        //System.out.println(fullName + " - "  + remark + "- " + url + " - " +  company + "- " + location );
        if (fullName != null){
            updatingUser.setFullName(fullName);
        }else{
            updatingUser.setFullName(currentuser.getFullName());
        }
        if (url != null){
            updatingUser.setFullName(url);
        }else{
            updatingUser.setFullName(currentuser.getUrl());
        }
        if (company != null){
            updatingUser.setFullName(company);
        }else{
            updatingUser.setFullName(currentuser.getCompany());
        }
        if (location != null){
            updatingUser.setFullName(location);
        }else{
            updatingUser.setFullName(currentuser.getLocation());
        }*/
        currentuser.setFullName(fullName);
        currentuser.setRemark(remark);
        currentuser.setUrl(url);
        currentuser.setCompany(company);
        currentuser.setLocation(location);
        System.out.println("updatingUser:  " + currentuser.getId() + currentuser.getUsername() + currentuser.getFullName());
        mapDto = userService.saveOrUpdate(currentuser);
        System.out.println("mapDto的结果是：" + mapDto);
        return  mapDto;
    }


   /*
    @RequestMapping(value = "/profile/updateUserPicture", method = RequestMethod.POST)
    @ResponseBody
    public MapDto  updateUserPicture(@RequestParam(value= "image", required = false) String base64Img){
        System.out.println("进入了updateUserPictue！" );
        System.out.println("base64Img : " + base64Img);
        BASE64Decoder decode = new BASE64Decoder();

        String base64 = base64Img.substring(base64Img.indexOf(",") + 1);
        System.out.println("base64 :" + base64);
        MapDto data = new MapDto();
        User user = getUser();
        if(base64Img!=null&&!"".equals(base64Img)) {
            try {
                byte[] imgbytes = decode.decodeBuffer(base64);
                for (int i = 0; i < imgbytes.length; ++i) {
                    if (imgbytes[i] < 0) {// 调整异常数据
                        imgbytes[i] += 256;
                    }
                }
                /*OutputStream out = new FileOutputStream("M:/images/test.jpg");
                //System.out.println(imgbytes);
                //user.setProfilePicture(imgbytes);
               // data = userService.saveOrUpdate(user);
                out.write(imgbytes);
                out.flush();
                out.close();
                System.out.println("执行----");
                FileInputStream fis = new FileInputStream(new File( "M:/images/test.jpg"));
                byte[] bytes = FileCopyUtils.copyToByteArray(fis);
                user.setProfilePicture(imgbytes);
                data = userService.saveOrUpdate(user);
                System.out.println("结束");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else{
            System.out.println("文件上传错误！");
        }
        return data;
    }*/


    @RequestMapping(value = "/profile/updateUserPicture", method = RequestMethod.POST)
    @ResponseBody
    public MapDto  updateUserPicture(@RequestParam(value= "avatar", required = false) MultipartFile file){
       MapDto data = new MapDto();
       User user = getUser();

        try {
            byte[] bytes = file.getBytes();
            user.setProfilePicture(bytes);
            userService.saveOrUpdate(user);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return data;
    }


    @RequestMapping(value="/showUserPicture", method = RequestMethod.GET)
    public void  getPictureFile(HttpServletRequest request, HttpServletResponse response){
        User user = getUser();
        byte[] data =user.getProfilePicture();
        response.setContentType("img/jpeg");
        response.setCharacterEncoding("utf-8");
        try {
            OutputStream outputStream=response.getOutputStream();
            InputStream in=new ByteArrayInputStream(data);
            int len=0;
            byte[] buf = new byte[1024];
            while((len=in.read(buf,0,1024)) != -1){
                outputStream.write(buf, 0, len);
            }
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
