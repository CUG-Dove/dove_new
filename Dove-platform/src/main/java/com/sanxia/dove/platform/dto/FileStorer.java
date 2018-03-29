package com.sanxia.dove.platform.dto;

import java.util.Map;

/**
 * Created by zy on 2018/3/2.
 */
public class FileStorer {
    Map<String,String> DirectaryNames;
    Map<String,String> FileNames;
    String ResponseResult;
    String fileContent;
    String fileType;

    public String getFileContent() {
        return fileContent;
    }

    public void setFileContent(String fileContent) {
        this.fileContent = fileContent;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public FileStorer(String fileContent, String fileType, String responseResult) {

        ResponseResult = responseResult;
        this.fileContent = fileContent;
        this.fileType = fileType;
    }

    public FileStorer() {
    }

    public FileStorer(Map<String, String> directaryNames, Map<String, String> fileNames, String responseResult) {
        DirectaryNames = directaryNames;
        FileNames = fileNames;
        ResponseResult = responseResult;
    }

    public String getResponseResult() {
        return ResponseResult;
    }

    public void setResponseResult(String responseResult) {
        ResponseResult = responseResult;
    }

    public Map<String, String> getDirectaryNames() {
        return DirectaryNames;
    }

    public void setDirectaryNames(Map<String, String> directaryNames) {
        DirectaryNames = directaryNames;
    }

    public Map<String, String> getFileNames() {
        return FileNames;
    }

    public void setFileNames(Map<String, String> fileNames) {
        FileNames = fileNames;
    }
}
