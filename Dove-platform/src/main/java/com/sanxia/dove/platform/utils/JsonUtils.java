package com.sanxia.dove.platform.utils;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Description: <br/>
 * Date: 2018-1-29 <br/>
 *
 * @author dove
 * @version
 * @see
 */
public class JsonUtils {

    public static String toJson(Object obj) {
        if (obj != null) {
            ObjectMapper mapper = new ObjectMapper();
            try {
                return mapper.writeValueAsString(obj);
            } catch (JsonProcessingException e) {
            }
        }
        return "";
    }

    public static Map<String, Object> jsonStr2Map(String json) {
        if (StringUtils.isNotEmpty(json)) {
            ObjectMapper mapper = new ObjectMapper();
            // 容许没有引号
            mapper.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
            try {
                return mapper.readValue(json, new TypeReference<Map<String, Object>>() {});
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println("运行到这里！");
        return new HashMap<String, Object>();
    }
}
