<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/13
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <div class="col-3 float-left pr-4" role="navigation">
                <nav class="menu">
                    <img id="avatar-left" class="avatar rounded-2 img-2" src="${ctx}settings/showUserPicture" alt="" >
                    <div  class="d-flex" style="margin-bottom: 10px;border-bottom: 1px solid #e1e4e8;padding: 10px 10px;line-height: 20px;color: #586069;
    background-color: #f3f5f8;">
                        <dd class="focus_num ">
                            <b><a href="#" target="_blank">0</a></b>
                            关注
                        </dd>
                        <dd class="focus_num ">
                            <b><a href="#" target="_blank">0</a></b>
                            粉丝
                        </dd>
                    </div>
                    <h3 class="menu-heading" >个人中心</h3>
                    <a href="${ctx}settings/account" class="menu-item" style="text-decoration:none;" id="menu-account">账户</a>
                    <a href="${ctx}settings/profile" class="menu-item" style="text-decoration:none;" id="menu-profile">个人资料</a>
                    <a href="${ctx}settings/email" class="menu-item" style="text-decoration:none;" id="menu-email">邮箱</a>
                    <a href="${ctx}settings/notifications" class="menu-item" style="text-decoration:none;" id="menu-notifications">通知</a>
                    <a href="${ctx}settings/blog" class="menu-item" style="text-decoration:none;" id="menu-blog">博客</a>
                    <a href="${ctx}settings/repositories" class="menu-item" style="text-decoration:none;" id="menu-repositories">资源仓库</a>


                </nav>
                <nav class="menu">
                    <a href="#" class="menu-item" style="text-decoration:none;" id="menu-applictions">应用</a>
                </nav>
            </div>

