/**
 * Project Name:Dove-platform
 * File Name:HomeController.java
 * package com.sanxia.dove.platform.controller.home;
 * Date:2018年3月9日 晚上20:52:07
 *
 */
package com.sanxia.dove.platform.controller.home;

import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Description: 首页 <br/>
 * Date: 2018年3月9日 晚上 20:52:07 <br/>
 *
 * @author ly
 * @version
 * @see
 */
@Controller
public class HomeController extends PlatformBaseController {

    /**
     * 跳转到首页
     */
    @RequestMapping("/index")
    public String index() {
        Subject sub = SecurityUtils.getSubject();
        if (sub.isAuthenticated()) {
            // 已登陆
            return "home/home";
        }
        return "home/login";
    }
    /**
     * 跳转到首页
     */

    @RequestMapping("/toHomePage")
    public String toHomePage() {
        return "home/home";
    }
}
