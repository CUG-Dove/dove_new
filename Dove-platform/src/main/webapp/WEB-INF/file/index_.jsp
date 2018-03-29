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

</head>
<body>
<%@ include file="/WEB-INF/common/top_logined.jsp" %>
<div class="content">
    <div class="content-left">

    </div>
    <div class="content-right">
        <div class="pjax_loading"></div>
        <div id="ShowDir"></div>
        <c:forEach var="file" items="${files.directaryNames}">
            <p>文件夹:<a href="${file.value}${file.key}/"> ${file.key}</a></p>
        </c:forEach>

        <c:forEach var="file" items="${files.fileNames}">
            <p>文件:<a href="${file.value}${file.key}"> ${file.key}</a></p>
        </c:forEach>
    </div>

</div>
<%@ include file="/WEB-INF/common/script.jsp" %>
<script type="text/javascript" src="/resources/js/jquery.pjax.js"></script>
<script>
    $(function () {
        $().pjax('a[target!=_blank]', '#ShowDir', {fragment: '#ShowDir',version:'', timeout: 8000,type: "POST"});
        $().on('pjax:send', function () { //pjax链接点击后显示加载动画；
            $(".pjax_loading").css("display", "block");
        });
        $().on('pjax:complete', function () { //pjax链接加载完成后隐藏加载动画；
            $(".pjax_loading").css("display", "none");
        });
    })
</script>

</body>
</html>
