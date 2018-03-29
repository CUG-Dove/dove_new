/**
 * Project Name:Dove-platform
 * File Name:PlatformConstants.java
 * package com.sanxia.dove.platform.core.utils;
 * Date:2018年3月14日上午11:14:41
 *
 */
package com.sanxia.dove.platform.core.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * Description:<br/>
 * Date:2018年3月14日 上午11:14:41
 *
 * @author ly
 * @version
 * @see
 */
public class PlatformConstants implements ApplicationContextAware{

    public  static ApplicationContext ctx;

    //图片服务path
    public static final String IMG_CONTEXT_PATH = PropertiesUtils.getProperty("IMG_CONTEXT_PATH");

    // 图片实际硬盘地址
    public static final String IMG_DISK_PATH = PropertiesUtils.getProperty("IMG_DISK_PATH");

    //图片安全地址
    public static final String IMG_SECURITY_PATH = PropertiesUtils.getProperty("IMG_SECURITY_PATH");

    //物理路径
    public static final String FILE_DISK_PATH = PropertiesUtils.getProperty("FILE_DISK_PATH");

    //相对路径
    public static final String FILE_RELATIVELY_PATH = PropertiesUtils.getProperty("FILE_RELATIVELY_PATH");
    /**
     * 图片文件格式限制
     */
    public static final String[] IMAGE_FORMAT_ARRAY = new String[] { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };// 全站中引用的图片格式

    /**
     * 图片限制大小 文件的极限大小，以字节为单位，0为不限制。1MB:1*1024*1024
     */
    public static final int IMAGE_SIZE_LIMIT = 1 * 1024 * 1024;


    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        ctx = applicationContext;
    }
}
