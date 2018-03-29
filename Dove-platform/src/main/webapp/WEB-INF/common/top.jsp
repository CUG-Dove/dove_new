<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/6
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="position-relative" style="height: 72px;">
    <div id="js-pjax-loader-bar" class="pjax-loader-bar">
        <div class="progress"></div>
    </div>
    <header class="Header header-logged-out  position-relative f4 py-3" role="banner" >
        <div class="container-lg d-flex px-3">
            <div class="d-flex flex-justify-between flex-items-center">
                <a class="navbar-brand" href="#" >
                    <!-- 	<img src="#" class="navbar-img"> -->
                    <span class="glyphicon glyphicon-grain" style="color:#FFF;font-size:50px;margin:-20px;padding-right:10px">
                </a>
            </div>
            <div class="HeaderMenu HeaderMenu--bright d-flex flex-justify-between flex-auto">
                <nav class="mt-0">
                    <ul class="d-flex list-style-none" style="margin-top:5px">
                        <li class="ml-2"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Brand</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Action</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Fund</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Link</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">About</a></li>
                    </ul>
                </nav>
                <div class="d-flex" style="margin-top:9px">
                    <div class="d-lg-flex flex-items-center mr-3" >
                        <div class="header-search   js-site-search" role="search">
                            <form accept-charset="UTF-8" action="#" class="js-site-search-form" method="get" >
                                <div style="margin:0;padding:0;display:inline">
                                    <input name="utf8" type="hidden" value="✓" >
                                    <!--button type="submit" class="btn btn-default">Submit</button -->
                                </div>
                                <label class="form-control header-search-wrapper js-chromeless-input-container" >
                                    <a href="#" class="header-search-scope no-underline">join</a>
                                    <input type="text" class="header-search   js-site-search" autocapitalize="off"  placeholder="搜索">
                                    <input type="hidden" class="js-site-search-type-field" name="type">
                                </label>
                            </form>
                        </div>
                    </div>
                    <span class="d-inline-block" >
                        <div class="HeaderNavlink px-0 py-2 m-0">
                            <a href="#" class="text-bold text-white no-underline">登陆</a>
                                <span class="text-gray">or</span>
                            <a href="#" class="text-bold text-white no-underline">注册</a>
                        </div>
                    </span>
                </div>
            </div>
        </div>
    </header>

    <!--nav class="navbar navbar-inverse position-relative py-3" role="navigation">
        <div class="container-fluid col-md-offset-1 col-lg-offset-1">
             <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="padding:8px;width:100px;">
                <!-- 	<img src="#" class="navbar-img">
                    <span class="glyphicon glyphicon-grain" style="color:#FFF;font-size:50px">
                </a>

            </div>
            <div class="container-lg d-flex px-3">
                <ul class="nav navbar-nav">
                <a class="navbar-brand" href="#">Brand</a>
                <a class="navbar-brand" href="#">Action</a>
                <a class="navbar-brand" href="#">Fund</a>
                <a class="navbar-brand" href="#">Link</a>
                </ul>

                 <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control"  placeholder="Search">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                 </form>
                 <ul class="nav navbar-nav navbar-right">
                 <!--<li style="color:#fff;"><a href="#">Link</a></li>
                 <li class="dropdown">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" style="color:#FFF;font-size:20px"></span> User <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                    <li><a href="#">Your home</a></li>
                    <li><a href="#">Your project</a></li>
                    <li><a href="#">Code block</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="#">Setting</a></li>
                    <li><a href="#">Sign Out</a></li>
                </ul>
                </ul>

            </div>

        </div>
    </nav>
    -->

</div>