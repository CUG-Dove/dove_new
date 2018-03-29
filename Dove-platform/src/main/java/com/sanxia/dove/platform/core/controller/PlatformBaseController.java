package com.sanxia.dove.platform.core.controller;

import com.sanxia.dove.common.core.utils.BigDecimalEditor;
import com.sanxia.dove.platform.entity.system.User;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;

public class PlatformBaseController extends BaseController {

    public static String SESSION_USER = "login_user";
    protected static final Logger log = LogManager.getLogger(PlatformBaseController.class);

    /**
     * 返回默认的基本参数 Description：<br/>
     */
    @ModelAttribute
    public void getBaseParam(HttpServletRequest request, Model model){
        model.addAttribute("ctx", getContextPath(request));
        model.addAttribute("domain", getDomain(request));
    }

    @InitBinder
    protected void initBinder(WebDataBinder binder){
        BigDecimalEditor bigDecimalEditor = new BigDecimalEditor();
        binder.registerCustomEditor(BigDecimal.class, bigDecimalEditor);
    }
    /**
     * 获取当前登陆的用户，如果没有登陆，返回null
     */
    protected User getUser(){
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession(false);
        if (session == null){
            return null;
        }else {
            return (User)session.getAttribute(SESSION_USER);
        }
    }
}