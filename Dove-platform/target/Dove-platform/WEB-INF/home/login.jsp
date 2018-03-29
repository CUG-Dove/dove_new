<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/2
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/common/head.jsp"%>
</head>

<body class="login" style="min-width: 1020px;word-wrap: break-word;">
<a class="hiddenanchor" id="signup"></a>
<a class="hiddenanchor" id="signin"></a>
<div class="header_wrapper" style="position: relative !important;" >
    <div class="pjax-loader-bar">
        <div class="progress"></div>
    </div>
    <div  style="position: relative !important;width:100%;height:120px">
        <div class="header header-logged-out width-full pt-5 pb-4" role="banner">
            <div class="container clearfix width-full text-center">
                <a class="navbar-brand" href="#" style="padding:2px;width:100%;text-center:true;font-size:60px;">
                    <!-- 	<img src="#" class="navbar-img"> -->
                    <span class="glyphicon glyphicon-grain" style="color:#7B8080;padding:8px;width:100px;">
                </a>
            </div>
        </div>
    </div>
</div>
<div class="" style="width:100%;height:50%;width: 340px;margin: 0 auto;padding-right: 16px !important;padding-left: 16px !important;">
    <form id="loginForm" action="${ctx}login" method="post" >
        <div class="auth-form-header p-0">
            <h3>账户登陆</h3>
        </div>
        <div class="alert alert-danger alert-dismissible" role="alert" id="alertDiv" style="display:none;">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>Warning!</strong> 密码或账号不正确.
        </div>
        <div class="auth-form-body mt-3">
            <label for="username" style="display: block;margin-bottom: 7px;cursor: default;">用户名或者邮箱</label>
            <input autocomplete="off" type="text" class="form-control input-block" placeholder="用户名或者邮箱地址" id="username" name="username" tabindex="1" >

            <label for="password" style="display: block;margin-bottom: 7px;cursor: default;">密码
                <a href="" class="label-link">忘记密码?</a></label>
            <input autofocus="autofocus" type="password" class="form-control form-control input-block" placeholder="密码" id="password" name="password" tabindex="2">

            <a class="btn btn-success btn-block" style="margin-top: 20px;" tabindex="3" onclick="tryLogin()">登 陆</a>

        </div>
    </form>
    <p class="create-account-callout mt-3">
        没有账号？
        <a href="#">
            注 册
        </a>
    </p>
</div>
<div class="footer container-lg p-responsive py-6 mt-6 f6" role="contentinfo">
    <ul class="list-style-none d-flex flex-justify-center">
        <li class="mr-3">
            <h5 class="bold"><a href="#" >About</a></h5>
        </li>
        <li class="mr-3">
            <h5 class="bold"><a href="#" >Help</a></h5>
        </li>
        <li class="mr-3">
            <h5 class="bold"><a href="#" >Privacy</a></h5>
        </li>
        <li class="mr-3">
            <h5 class="bold">More on <a href="#">dove.com</a></h5>
        </li>
    </ul>
</div>

<%@ include file="/WEB-INF/common/script.jsp"%>
<script>
    function tryLogin(){
        if($("#username").val() == ""){
            //document.getElementById("#alertDiv").style.display="block";
            $('#alertDiv').show();
            return;
        }
        if($("#password").val() == ""){
            //document.getElementById("#alertDiv").style.display="block";
            $('#alertDiv').show();
            return;
        }
        $("#loginForm").submit();
    }
</script>
</body>
</html>

