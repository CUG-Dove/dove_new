<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/4/2
  Time: 19:46
  左侧菜单
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="home_leftnav" class="home_leftnav">
    <div class="left-nav" style="position: absolute; bottom: auto;">
        <ul>
            <div>
                <li><a href="${ctx}Blog/myBlogs" class="main-menu-item selected" id="main-menu-item-Blogs">我的<br/>博客</a></li>
            </div>
            <div>
                <li><a href="#" class="main-menu-item" id="main-menu-item-category">分类<br/>管理</a></li>
            </div>
            <div>
                <li><a href="#" class="main-menu-item" id="main-menu-item-focus">占位<br/>xxx</a></li>
            </div>

        </ul>
    </div>
</div>
<script>
    $(function () {
        $('.left-nav a').mouseover(function () {
            $(this).addClass('selected');
        });
        $('.left-nav a').mouseleave(function () {
            $(this).removeClass('selected');
            $(str).addClass('selected');
        });
    })
</script>