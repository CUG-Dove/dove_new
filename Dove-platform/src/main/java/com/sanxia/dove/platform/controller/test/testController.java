/**
 * Project Name:Dove-platform
 * File Name:testController.java
 * Package Name:package com.sanxia.dove.platform.controller.test;
 * Date:2018年3月21日 中午12:41
 *
 */

package com.sanxia.dove.platform.controller.test;

import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 主要是用于测试 使用的Controller类
 */

@Controller
@RequestMapping("/test")
public class testController extends PlatformBaseController {

    /**
     * 测试 cropper.js demo
     */

    @RequestMapping("/toCropperDemoPage")
    public String toCropperDemoPage(){
        return "test/cropperDemo";
    }
}
