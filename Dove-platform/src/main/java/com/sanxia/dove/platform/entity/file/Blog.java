package com.sanxia.dove.platform.entity.file;

/**
 * Created by zy on 2018/3/27.
 */
public class Blog {
    //博客ID
    private long id;
    //作者ID
    private long writerId;
    //标题
    private String title;
    //内容
    private byte[] content;
    //发布时间
    private String createTime;
    //最近修改时间
    private String lastModiTime;
    //删除时间
    private String deleteTime;
    //是否被删除
    private String isDelete;
    //赞数
    private int agrees;
    //踩数
    private int disagrees;
    //评论数
    private int reviews;
    //是否是草稿
    private String isDraft;

    public String getIsDraft() {
        return isDraft;
    }

    public void setIsDraft(String isDraft) {
        this.isDraft = isDraft;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getWriterId() {
        return writerId;
    }

    public void setWriterId(long writerId) {
        this.writerId = writerId;
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getLastModiTime() {
        return lastModiTime;
    }

    public void setLastModiTime(String lastModiTime) {
        this.lastModiTime = lastModiTime;
    }

    public String getDeleteTime() {
        return deleteTime;
    }

    public void setDeleteTime(String deleteTime) {
        this.deleteTime = deleteTime;
    }

    public String getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(String isDelete) {
        this.isDelete = isDelete;
    }

    public int getAgrees() {
        return agrees;
    }

    public void setAgrees(int agrees) {
        this.agrees = agrees;
    }

    public int getDisagrees() {
        return disagrees;
    }

    public void setDisagrees(int disagrees) {
        this.disagrees = disagrees;
    }

    public int getReviews() {
        return reviews;
    }

    public void setReviews(int reviews) {
        this.reviews = reviews;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Blog() {
    }

    public Blog(long id, long writerId, String title, byte[] content, String createTime, String lastModiTime, String deleteTime, String isDelete, int agrees, int disagrees, int reviews, String isDraft) {
        this.id = id;
        this.writerId = writerId;
        this.title = title;
        this.content = content;
        this.createTime = createTime;
        this.lastModiTime = lastModiTime;
        this.deleteTime = deleteTime;
        this.isDelete = isDelete;
        this.agrees = agrees;
        this.disagrees = disagrees;
        this.reviews = reviews;
        this.isDraft = isDraft;
    }
}
