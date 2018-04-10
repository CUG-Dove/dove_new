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
    <title>File Info</title>
    <meta charset="utf-8"/>
    <%@ include file="common/head.jsp" %>
    <%@ include file="/WEB-INF/common/head.jsp" %>
    <link href="${ctx}resources/css/file-blog-common.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/common/top_logined.jsp" %>
<div class="application-main" role="main">
    <div class="container main-top">
        <div><h1>username</h1></div>
    </div>
    <div class="container main-mid">
        <div class="">

        </div>
        <div id="file-content">
            <c:choose>
                <c:when test="${file.fileType=='java'}">
                    <div id="doc-content">
                        <pre>${file.fileContent}</pre>
                    </div>
                </c:when>
                <c:when test="${file.fileType=='pic'}">
                    <p><img src="${file.fileContent}"/></p>
                </c:when>
            </c:choose>
        </div>
    </div>
</div>
    <script type="text/javascript">
        var testEditor;
        $(function () {
            testEditor = editormd.markdownToHTML("doc-content", {//注意：这里是上面DIV的id
                htmlDecode: "style,script,iframe",
                emoji: true,
                taskList: true,
                tex: true, // 默认不解析
                flowChart: true, // 默认不解析
                sequenceDiagram: true, // 默认不解析
                codeFold: true,
            });
        });
    </script>
</body>
</html>
