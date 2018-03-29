/**
 * Project Name:Dove-platform
 * File Name:RegisterController.java
 * Package Name:com.sanxia.dove.platform.controller.home
 * Date:2018年3月6日 晚上11:00
 *
 */


package com.sanxia.dove.platform.controller.home;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sanxia.dove.common.utils.ValidUtils;
import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import com.sanxia.dove.platform.entity.system.User;
import com.sanxia.dove.platform.mapper.UserMapper;
import com.sanxia.dove.platform.service.UserService;
import com.sanxia.dove.platform.utils.JsonUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * Description:注册<br/>
 * Date:2018年4月4日下午3:10
 *
 * @author ly
 * @version
 * @see
 */

@Controller
public class RegisterController extends PlatformBaseController{

    @Autowired
    private UserService userService;

    /**
     * 跳转到注册页面
     */
    @RequestMapping("/toRegister")
    public String toRegisterPage(){
        return "home/register";
    }

    /**
     * 注册
     */
    @RequestMapping("/register")
    public String register(@RequestParam(value="username",required = false) String username,
                           @RequestParam(value = "email", required = false) String email,
                           @RequestParam(value="password", required = false) String password,
                           Model model){

        try {
            if (StringUtils.isBlank(username) || StringUtils.isBlank(email) || StringUtils.isBlank(password) ){
                model.addAttribute("errorMsg", "请填写完整的注册信息.");
                model.addAttribute("email", email);
                model.addAttribute("username", username);
                System.out.println("出错了！");
                return "home/register";
            }
           //String path = this.getServletContext().getRealPath("/");
          // System.out.println(path);
            // 设置默认的图像
            FileInputStream fis = new FileInputStream(new File( "M:/images/user2.jpg"));
            //System.out.println(path);
            byte[] bytes = FileCopyUtils.copyToByteArray(fis);
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            user.setProfilePicture(bytes);
            System.out.println("bytes:" + bytes);
            System.out.println(user.toString());
            userService.register(user);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


        return "home/home";
    }

    /**
     * 验证 username
     */
    @ResponseBody
    @RequestMapping(value="/validateUserName", method = RequestMethod.POST , produces = "application/json;charset=UTF-8")
    public String validate(HttpServletResponse response, HttpServletRequest request){
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        String username = request.getParameter("username");
        if (userService.validateUserName(username) == Boolean.TRUE){
            map.put("valid", false); // 用户名不存在
        } else {
            map.put("valid", true); // 用户名存在
        }
        ObjectMapper mapper = new ObjectMapper();
        String result = "";
        try {
            result = mapper.writeValueAsString(map);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 验证 email
     */
    @ResponseBody
    @RequestMapping(value="/validateEmail", method = RequestMethod.POST , produces = "application/json;charset=UTF-8")
    public String validateEmail(HttpServletResponse response, HttpServletRequest request){
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        String email = request.getParameter("email");
        if (userService.validateEmail(email) == Boolean.TRUE){
            map.put("valid", false); // 邮箱已经注册
        } else {
            map.put("valid", true);// 邮箱还未注册
        }
        ObjectMapper mapper = new ObjectMapper();
        String result = "";
        try {
            result = mapper.writeValueAsString(map);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return result;
    }
}
