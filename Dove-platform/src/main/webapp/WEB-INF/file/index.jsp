<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/3/2
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>File Scan</title>
    <meta http-equiv="x-pjax-version" >
    <%@ include file="/WEB-INF/common/head.jsp" %>
    <link href="${ctx}resources/css/file-blog-common.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/common/top_logined.jsp" %>
<div class="application-main"  role="main">
    <div class="container main-top">
        <div><h1>username</h1></div>
    </div>
    <div class="container main-mid">
        <div class="">

        </div>
        <div class="">
            <table class="table table-hover content-table show-table">
                <col width="10px"/>
                <col width="50px"/>
                <col width="200px"/>
                <tbody>
                <c:forEach var="dir" items="${files.directaryNames}">
                    <tr class="Dir-item">
                        <td class="File-icon"><span class="glyphicon glyphicon-folder-close"></span></td>
                        <td class="File-name"><a href="${dir.value}/${dir.key}"> ${dir.key}</a></td>
                        <td class="File-brief">***</td>
                        <td class="File-create-time">2018-3-22 16:46:58</td>
                    </tr>
                </c:forEach>

                <c:forEach var="file" items="${files.fileNames}">
                    <tr class="File-item">
                        <td class="File-icon" ><span class="glyphicon glyphicon-file"></span></td>
                        <td class="File-name"><a href="${file.value}/${file.key}"> ${file.key}</a></td>
                        <td class="File-brief">***</td>
                        <td class="File-Create-time">2018-3-22 16:47:06</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
<%@ include file="/WEB-INF/common/script.jsp" %>


</body>
</html>
