/**
 * Project Name:Dove-platform
 * File Name:LoginController.java
 * Package Name:com.sanxia.dove.platform.controller.home
 * Date:2018年4月4日下午3:10
 *
 */
package com.sanxia.dove.platform.controller.home;

import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * Description: 登陆 <br/>
 * Date:2018年3月4日下午3:10 <br/>
 *
 * @author ly
 * @version
 * @see
 */

@Controller
public class LoginController extends PlatformBaseController {


    /**
     * 跳转到登陆页
     */
    @RequestMapping("/toLoginPage")
    public String toLoginPage() {
        return "home/login";
    }

    /**
     * 登陆
     */
    @RequestMapping("/login")
    public String login(@RequestParam(value = "username", required = false) String username,
                        @RequestParam(value = "password", required = false) String password,
                        Model model) {
        Subject currenUser = SecurityUtils.getSubject();
        if (currenUser.isAuthenticated()) {
            // 已经登陆，跳转到首页
            return "userCenter/profile";
        }

        // 登陆
        try {
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            currenUser.login(token);
        } catch (AuthenticationException e){
            // 登陆失败
            model.addAttribute("username", username);
            model.addAttribute("errorMsg", "密码或账号不正确.");
            System.out.println("登录失败！");
            return "home/login";
        }
        // 登陆成功，跳转到首页
        return "userCenter/profile";
    }
}
