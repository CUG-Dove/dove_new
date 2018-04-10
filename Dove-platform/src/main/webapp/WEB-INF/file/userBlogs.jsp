
<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/4/3
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/taglib.jsp" %>
<html>
<head>
    <title>我的博客</title>
    <!-- JQuery-->
    <script src="${ctx}resources/vendors/jquery/dist/jquery.min.js"></script>
    <%@ include file="common/markdown.jsp" %>
    <%@ include file="common/head.jsp"%>
    <link href="${ctx}resources/css/file-blog-common.css" rel="stylesheet">
</head>
<body>
<div id="layout">
    <%@ include file="/WEB-INF/common/top_logined.jsp" %>
    <div class="application-main" role="main">
        <div class="container">
            <div class="pos-left ">
                <%@ include file="common/left-menu.jsp"%>
            </div>
            <div class="pos-right ">
                <div class="user-nav">

                </div>
                <ul class="clearfix">
                    <c:forEach var="blog" items="${storer.blogs}">
                        <li class=" border-bottom border-gray-light py-5">
                            <div class="d-flex flex-justify-between flex-items-start ">
                                <div class="d-flex">
                                    <h3 class="mb-1 f3">
                                        <a href="#" >${blog.title}</a><small><c:choose>
                                        <c:when test="${blog.isDraft==1}">*</c:when>
                                        <c:otherwise>+</c:otherwise>
                                    </c:choose></small>
                                    </h3>
                                </div>
                            </div>
                            <p class="text-gray mb-2">${blog.content}</p>
                            <div class="subinfo_box clearfix">
                                <a href="#" target="_blank" class="mr-2" style="margin-right: 20px">
                                <span class="subinfo_face">
                                    <!--  传入用户的头像-->
                                    <img src="${ctx}resources/images/user2.jpg" class="rounded-1" width="20" height="20" alt="">
                                </span>
                                </a>
                                <a href="#" target="_blank" class="mr-2">
                                    <!-- 传入用户的名字-->
                                    <span class="subinfo S_txt2">鸽子</span>
                                </a>
                                <!-- 用js 写时间 传到这里-->
                                <span class="subinfo S_txt2" >${blog.createTime}</span>
                                <span class="subinfo_rgt S_txt2">
                                <em class=" W_ficon ficon_praised S_ficon W_f16" ><span class="icon-thumbs-up"></span></em>
                                (<em>${blog.reviews}</em>)
                            </span>
                                <span class="rgt_line W_fr"></span>
                                <span class="subinfo_rgt S_txt2">
                                <em class="W_ficon S_ficon W_f16"><span class="icon-folder-close-alt"></span></em>
                                (<em>${blog.agrees}</em>)
                            </span>
                            </div>
                        </li>



                    </c:forEach>
                </ul>

            </div>
        </div>
    </div>
</div>
</body>
</html>
