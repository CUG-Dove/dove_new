package com.sanxia.dove.platform.core.controller;

import javax.servlet.http.HttpServletRequest;

public class BaseController {

    /**
     *  返回ip地址
     */
    protected String getRemoteIP(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for"); // 获取真实IP  http://blog.csdn.net/z69183787/article/details/21187485
        if (ip == null) {
            return request.getRemoteAddr();
        }
        return ip;
    }

    /**
     *  返回项目路径
     */
    protected String getContextPath(HttpServletRequest request){
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":"
                + request.getServerPort() + path + "/";
        return basePath;
    }

    /**
     * 返回域名
     */
    protected String getDomain(HttpServletRequest request){
        return request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
    }
}

