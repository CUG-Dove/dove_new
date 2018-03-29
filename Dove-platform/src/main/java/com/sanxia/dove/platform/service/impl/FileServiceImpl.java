package com.sanxia.dove.platform.service.impl;


import com.sanxia.dove.platform.core.utils.PropertiesUtils;
import com.sanxia.dove.platform.dto.FileStorer;
import com.sanxia.dove.platform.entity.file.Blog;
import com.sanxia.dove.platform.mapper.BlogMapper;
import com.sanxia.dove.platform.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by zy on 2018/3/2.
 */
@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private BlogMapper blogMapper;

    /***
     *
     * @param path 文件夹路径
     * @param URL  URL路径
     * @return
     */
    public FileStorer getFloderDir(String path, String URL) {
        File file = new File(path);

        Map<String,String> FloderNames = new HashMap<String, String>();
        Map<String,String> FileNames = new HashMap<String, String>();

        LinkedList<File> list = new LinkedList<File>();
        File[] files = file.listFiles();
        for (File file2 : files) {
            if (file2.isDirectory()) {
                FloderNames.put(file2.getName(),URL);
            } else {
                //文件夹链接改为文件链接
                FileNames.put(file2.getName(),URL.replaceFirst("Floder","Blob"));
            }
        }
        FileStorer fileStorer = new FileStorer(FloderNames,FileNames,"success");
        return fileStorer;
    }
    @Override
    public String getFloderDir2(String path, String URL) {
        File file = new File(path);
        String html1="";
        String html2="";
        Map<String,String> FloderNames = new HashMap<String, String>();
        Map<String,String> FileNames = new HashMap<String, String>();
        LinkedList<File> list = new LinkedList<File>();
        File[] files = file.listFiles();
        for (File file2 : files) {
            if (file2.isDirectory()) {
                //FloderNames.put(file2.getName(),URL);
                //<p>文件夹:<a href="${file.value}${file.key}/"> ${file.key}</a></p>
                html1 += "<p>文件夹:<a  href='"+URL+file2.getName()+"/'>"+file2.getName()+"</a></p>";
            } else {
                //文件夹链接改为文件链接
                //FileNames.put(file2.getName(),URL.replaceFirst("Floder","Blob"));
                html2 += "<p>文件:<a  href='"+URL+file2.getName()+"/'>"+file2.getName()+"</a></p>";
            }
        }
        return html1+html2;
    }
    public FileStorer showFile(String path ) {
        /***************获取文件*********************/
        FileStorer fileStorer = new FileStorer();
        String[] pathSplit = path.split("/");
        String filename = pathSplit[pathSplit.length-1];
        String filetype = fileType(filename);
        String encoding ="UTF-8";
        File file = new File(path);

        if (filetype == "docx") {
            Long fileLength = file.length();
            byte[] fileContent = new byte[fileLength.intValue()];
            try {
                FileInputStream in = new FileInputStream(file);
                in.read(fileContent);
                in.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                String result = new String(fileContent, encoding);
                fileStorer = new FileStorer(result, "java", "success");
            } catch (UnsupportedEncodingException e) {
                System.err.println("The OS does not support " + encoding);
                e.printStackTrace();
                return null;
            }
        }else if (filetype == "pic"){

            path = path.replaceFirst(PropertiesUtils.getProperty("FILE_UPLOAD_PATH"),PropertiesUtils.getProperty("FILE_DOWNLOAD_PATH"));
            fileStorer = new FileStorer(path, "pic", "success");
        }


        return fileStorer;
    }

    public String fileType(String fileName) {
        if (fileName == null) {
            fileName = "文件名为空！";
            return fileName;
        } else {
            // 获取文件后缀名并转化为写，用于后续比较
            String fileType = fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()).toLowerCase();

            // 创建图片类型数组
            String img[] = { "bmp", "jpg", "jpeg", "png", "tiff", "gif", "pcx", "tga", "exif", "fpx", "svg", "psd",
                    "cdr", "pcd", "dxf", "ufo", "eps", "ai", "raw", "wmf" };
            for (int i = 0; i < img.length; i++) {
                if (img[i].equals(fileType)) {
                    return "pic";
                }
            }

            // 创建文档类型数组
            String document[] = { "txt", "java","c++","doc", "docx", "xls", "htm", "html", "jsp", "rtf", "wpd", "pdf", "ppt" };
            for (int i = 0; i < document.length; i++) {
                if (document[i].equals(fileType)) {
                    return "docx";
                }
            }

            // 创建视频类型数组
            String video[] = { "mp4", "avi", "mov", "wmv", "asf", "navi", "3gp", "mkv", "f4v", "rmvb", "webm" };
            for (int i = 0; i < video.length; i++) {
                if (video[i].equals(fileType)) {
                    return "video";
                }
            }

            // 创建音乐类型数组
            String music[] = { "mp3", "wma", "wav", "mod", "ra", "cd", "md", "asf", "aac", "vqf", "ape", "mid", "ogg",
                    "m4a", "vqf" };
            for (int i = 0; i < music.length; i++) {
                if (music[i].equals(fileType)) {
                    return "music";
                }
            }
        }
        return "其他";
    }

    /***
     * 发布博客
     * @param writerId
     * @param content
     * @return
     */
    @Override
    public boolean createBlog(long writerId,String title, String content) {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        Date now = new Date();
        long ID = Long.parseLong(format.format(now));
        format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String createTime = format.format(now);
        int agrees = 0;
        int disagrees = 0;
        int reviews = 0;
        String isDelete = "0";
        String isDraft="0";
        Blog blog = new Blog(ID,writerId,title,content.getBytes(),createTime,createTime,createTime,isDelete,agrees,disagrees,reviews,isDraft);
        int res = blogMapper.insertBlog(blog);
        if(res > 0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<Blog> getUserBlogs(long writerId) {
        List<Blog> blogs = blogMapper.getUserBlogs(writerId);
        return blogs;
    }

}
