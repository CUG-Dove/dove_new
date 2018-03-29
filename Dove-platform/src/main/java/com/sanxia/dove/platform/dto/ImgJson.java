package com.sanxia.dove.platform.dto;

/**
 * Created by zy on 2018/3/21.
 */
public class ImgJson {
    Integer success;
    String message;
    String url;

    public Integer getSuccess() {
        return success;
    }

    public void setSuccess(Integer success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public ImgJson(Integer success, String message, String url) {

        this.success = success;
        this.message = message;
        this.url = url;
    }
}
