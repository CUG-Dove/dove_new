package com.sanxia.dove.platform.controller.repositories;


import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import com.sanxia.dove.platform.core.utils.PropertiesUtils;
import com.sanxia.dove.platform.dto.FileStorer;
import com.sanxia.dove.platform.service.FileService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by zy on 2018/3/2.
 *
 * move to repositories by ly on 2018/4/9 21:10
 */
@Controller
public class RepositoriesFileController extends PlatformBaseController {
    private final org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    FileService fileService;
    @Autowired
    HttpServletRequest request;

    /***
     * 通过URL分析出路径，并且得到该路径下所有文件/文件夹
     * @param username 用户名
     * @param nowFloder 需要进入的文件夹名
     * @param model
     * @return 返回到页面并显示
     */
    @RequestMapping("/{username}/Floders/**")
    public String Ergodicfile(String username,String nowFloder,Model model) {
        if (username == "" || username == null) {
            username = "test";
        }
        if (request.getHeader("x-pjax-version") != null) {
            logger.info("!NULL");
        }
        if (request.getHeader("x-pjax-version") == null) {
            logger.info("NULL");
        }


        String servletPath = request.getServletPath();    //去掉localhost:8080的部分
        String url  = servletPath;
        if(servletPath.charAt(0)=='/') {
            servletPath = servletPath.replaceFirst("/", "");
        }
        //拼凑resources文件夹路径
        String path = PropertiesUtils.getProperty("FILE_DISK_PATH")+servletPath;

        logger.info(path);
        FileStorer fileStorer = fileService.getFloderDir(path,url);

        model.addAttribute("files",fileStorer);
        return "repositories/repositories";
    }

  /*  @RequestMapping(value = "/{username}/Floder2/**")
    @ResponseBody
    public String Ergodicfile2(String username,String nowFloder,Model model) {
        if (username == "" || username == null) {
            username = "test";
        }

        //获取路径
        StringBuffer requestURL = request.getRequestURL(); //整个URL
        if(requestURL.charAt(requestURL.length()-1) !='/'){
            requestURL.append('/');
        }
        String servletPath = request.getServletPath();    //去掉localhost:8080的部分

        //拼凑resources文件夹路径
        String path = "E:/"+servletPath;
        logger.info(path);
        String html = fileService.getFloderDir2(path,requestURL.toString());

        return html;
    }*/

    /***
     * 显示文件内容
     * @param username 用户名
     * @param model
     * @return 返回页面 显示文件
     */
    @RequestMapping("/{username}/Blobs/**")
    public String shouFile(String username,Model model){
        String servletPath = request.getServletPath();    //去掉localhost:8080的部分
        String url  = servletPath;
        if(servletPath.charAt(0)=='/') {
            servletPath = servletPath.replaceFirst("/", "");
        }
        //拼凑resources文件夹路径
        String path = PropertiesUtils.getProperty("FILE_DISK_PATH")+servletPath;
        FileStorer fileStorer = fileService.showFile(path.replaceFirst("Blob","Floder"));
        logger.info(fileStorer.getFileContent());
        model.addAttribute("file",fileStorer);
        return "file/file";
    }
}
