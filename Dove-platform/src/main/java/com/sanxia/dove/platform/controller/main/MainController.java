/**
 * Project Name:Dove-platform
 * File Name:HomeController.java
 * package com.sanxia.dove.platform.controller.main;
 * Date:2018年3月23日 下午 16:02:07
 *
 */

package com.sanxia.dove.platform.controller.main;

import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Description: 主页 用来展示热点消息<br/>
 * Date:2018年3月23日 下午 16:02:07 <br/>
 *
 * @author ly
 * @version
 * @see
 */
@Controller
@RequestMapping("/main")
public class MainController extends PlatformBaseController {

    @RequestMapping("/toMainPage")
    public String toMainPage(){
        return "main/main";
    }

}
