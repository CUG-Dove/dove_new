<%--
  Created by IntelliJ IDEA.
  User: dove
  Date: 2018/4/7
  Time: 15:57
  To change this template use File | Settings | File Templates.
  Description:显示项目文件的主页
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<html>
<head>
    <%@ include file="/WEB-INF/repositories/common/head.jsp"%>

</head>
<body class="position-relative">
    <%@ include file="/WEB-INF/common/top_logined.jsp"%>
    <div class="application-main" role="main">
            <div class="d-lg-flex container-repo p-responsive" >
                <div class="my-6" style="margin-right: 35px;margin-left: 100px;max-width: 900px; ">
                    <%@ include file="/WEB-INF/repositories/common/repositories_top.jsp"%>
                    <%@ include file="/WEB-INF/repositories/common/repositories_main.jsp"%>
                </div>
                <%@ include file="/WEB-INF/repositories/common/repositories_right.jsp"%>
            </div>


        <%@ include file="/WEB-INF/repositories/common/script.jsp"%>
    </div>
</body>
</html>
