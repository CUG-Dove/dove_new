package com.sanxia.dove.platform.service;


import com.sanxia.dove.platform.dto.FileStorer;
import com.sanxia.dove.platform.entity.file.Blog;

import java.util.List;

/**
 * Created by zy on 2018/3/2.
 */

public interface FileService {
    //获取path路径下的所有文件
    public FileStorer getFloderDir(String path, String URL);
    public String getFloderDir2(String path, String URL);
    //获取文件内容
    public FileStorer showFile(String path);
    //获取文件类型
    public String fileType(String fileName);
    //插入Blog
    public boolean createBlog(long writerId,String title,String content);
    public List<Blog> getUserBlogs(long writerId);
}
