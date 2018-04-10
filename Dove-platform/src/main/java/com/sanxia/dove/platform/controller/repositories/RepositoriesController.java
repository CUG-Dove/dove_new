/**
 * Project Name:Dove-platform
 * File Name:RepositoriesController.java
 * ppackage com.sanxia.dove.platform.controller.repositories;
 * Date:2018年4月7日 下午 16:11:07
 *
 */

package com.sanxia.dove.platform.controller.repositories;

import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Description: 展示用户上传项目文件 <br/>
 * Date:2018年4月7日 下午 16:11:07 <br/>
 *
 * @author ly
 * @version
 * @see
 */

@Controller
@RequestMapping("/repositories")
public class RepositoriesController extends PlatformBaseController{

    @RequestMapping("/toRepositoriesPage")
    public String toRepositoriesPage(){ return "repositories/repositories"; }

}
