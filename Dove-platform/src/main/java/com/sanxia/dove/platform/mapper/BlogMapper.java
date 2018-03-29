package com.sanxia.dove.platform.mapper;

import com.sanxia.dove.platform.entity.file.Blog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zy on 2018/3/27.
 */
public interface BlogMapper {
    /***
     * 插入一篇博客
     * @param blog
     * @return
     */
    int insertBlog(Blog blog);

    /***
     * 获取id为writerId的用户的所有blog
     * @param writerId
     * @return
     */
    List<Blog> getUserBlogs(long writerId);
}
