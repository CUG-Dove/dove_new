/**
 * Project Name:Dove-platform
 * File Name:PropertiesUtils.java
 * package com.sanxia.dove.platform.core.utils;
 * Date:2018年3月14日上午11:06:20
 *
 */
package com.sanxia.dove.platform.core.utils;

import java.io.IOException;
import java.util.Properties;

/**
 * Description: <br/>
 * Date: 2018年3月14日 上午11:06:20 <br/>
 *
 * @author ly
 * @version
 * @see
 */
public class PropertiesUtils {
    public static final String DEFAULT_PROPERTY = "/conf/application.properties";

    public static String getPropery(String key, String filePath){
        Properties pro =  new Properties();
        try {
            pro.load(PropertiesUtils.class.getResourceAsStream(filePath));
            return pro.getProperty(key);
        } catch (IOException e) {
            return null;
        }
    }

    public static String  getProperty(String key){
        return getPropery(key, DEFAULT_PROPERTY);
    }
}
