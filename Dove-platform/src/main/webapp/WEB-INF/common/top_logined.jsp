<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/9
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="position-relative" style="height: 72px;" role="navigation">
    <div id="js-pjax-loader-bar" class="pjax-loader-bar">
        <div class="progress"></div>
    </div>
    <header class="Header header-logged-out  position-relative f4 py-3" role="banner">
        <div class="container-lg d-flex px-3">
            <div class="d-flex flex-justify-between flex-items-center">
                <a class="navbar-brand" href="#" >
                    <!-- 	<img src="#" class="navbar-img"> -->
                    <span class="glyphicon glyphicon-grain" style="color:#FFF;font-size:50px;margin:-20px;padding-right:10px">
                </a>
            </div>
            <div class="HeaderMenu HeaderMenu--bright d-flex flex-justify-between flex-auto ">
                <nav class="mt-0">
                    <ul class="d-flex list-style-none" style="margin-top:5px">
                        <li class="ml-2"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Brand</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Action</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Fund</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">Link</a></li>
                        <li class="ml-4"><a href="#" class="js-selected-navigation-item HeaderNavlink px-0 py-2 m-0">About</a></li>
                    </ul>
                </nav>
                <div class="d-flex" >
                    <div class="d-lg-flex flex-items-center mr-3" >
                        <div class="header-search   js-site-search" role="search">
                            <form accept-charset="UTF-8" action="#" class="js-site-search-form" method="get" >
                                <div style="margin:0;padding:0;display:inline">
                                    <input name="utf8" type="hidden" value="✓" >
                                    <!--button type="submit" class="btn btn-default">Submit</button -->
                                </div>
                                <label class="form-control header-search-wrapper js-chromeless-input-container" >
                                    <a href="#" class="header-search-scope no-underline">join</a>
                                    <input type="text" class="header-search   js-site-search" autocapitalize="off" placeholder="搜索" >
                                    <input type="hidden" class="js-site-search-type-field" name="type">
                                </label>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="d-flex">
                    <ul class="flex-items-center list-style-none d-flex">
                        <li class="dropdown">
                            <span class="d-inline-block px-2">
                                <a class="notification-indicator tooltipped" href="#">
                                    <svg aria-hidden="true" class="octicon octicon-bell" height="20" version="1.1" viewBox="0 0 14 16" width="17.5">
                                        <path fill-rule="evenodd" d="M14 12v1H0v-1l.73-.58c.77-.77.81-2.55 1.19-4.42C2.69 3.23 6 2 6 2c0-.55.45-1 1-1s1
                                              .45 1 1c0 0 3.39 1.23 4.16 5 .38 1.88.42 3.66 1.19 4.42l.66.58H14zm-7 4c1.11 0 2-.89 2-2H5c0 1.11.89 2 2 2z">
                                        </path>
                                    </svg>
                                </a>
                            </span>
                        </li>
                        <li class="dropdown">
                            <a class="user-nav dropdown-details details-reset  d-flex pl-2 flex-items-center " data-toggle="dropdown">
                                <a class="HeaderNavlink name mt-1" data-toggle="dropdown">

                                    <img class=" float-left mr-1 img-circle"  id="avatar-top" src="${ctx}settings/showUserPicture" width="35" height="35" alt="" >
                                    <span class="dropdown-caret"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-sw">
                                    <li><a class="dropdown-item" href="#">Action </a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><a class="dropdown-item" href="#">Something else here </a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a class="dropdown-item" href="#">One more separated link</a></li>
                                </ul>
                            </a>
                        </li>
                    </ul>
                </div>
                </div>


            </div>
        </div>
    </header>
</div>
