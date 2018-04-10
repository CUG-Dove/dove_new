<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/30
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/common/head.jsp"%>
</head>
<body class="logged-out page-responsive min-width-0 f4">
<%@ include file="/WEB-INF/common/top_logined.jsp"%>
<div class="js-flash-container"></div>
<div class="application-main" role="main">
    <div id="js-pjax-container" data-pjax-container>
        <div class="page-content container clearfix">

            <%@ include file="/WEB-INF/userCenter/menu.jsp"%>
            <div class="col-9 float-left">
                <div class="" style="border: 1px #e1e4e8 solid;padding: 20px;font-size: small" >
                    <div class="Subhead">
                        <h2 class="Subhead-heading">通知</h2>
                    </div>
                    <p>
                        选择您接受通知的方式. 我们将会按照你设置的通知方式向您发送通知信息.
                    </p>
                    <div class="Box mt-3">
                        <div class="Box-row">
                            <h4>自动关注</h4>
                            <form class="js-setting-toggle" accept-charset="UTF-8">
                                <p class="note">当你上传项目文件到远程仓库时，将会自动的接受到上传文件成功的信息</p>
                                <div class="form-checkbox mt-1">
                                    <label>
                                        <input type="checkbox" name="auto_subscribe_repositories" value="0" id="auto_subscribe_repositories " >
                                        自动关注文件上传相关信息
                                        <span class="status-indicator js-status-indicator">
                                            <svg class="octicon octicon-check" width="12" height="16" >
                                                <path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path>
                                            </svg>
                                            <svg class="octicon octicon-x" width="12" height="16">
                                                <path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path>
                                            </svg>
                                        </span>
                                    </label>
                                </div>
                            </form>
                            <form class="js-setting-toggle" accept-charset="UTF-8">
                                <p class="note">当你加入一个讨论组，将会自动的接受到这个讨论组的讨论信息</p>
                                <div class="form-checkbox mt-1">
                                    <label>
                                        <input type="checkbox" name="auto_subscribe_discussions" value="1" id="auto_subscribe_discussions" >
                                        自动关注讨论组相关信息
                                        <span class="status-indicator js-status-indicator ">
                                            <svg class="octicon octicon-check" width="12" height="16" >
                                                <path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path>
                                            </svg>
                                            <svg class="octicon octicon-x" width="12" height="16">
                                                <path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path>
                                            </svg>
                                        </span>
                                    </label>
                                </div>
                            </form>
                        </div>
                        <div class="Box-row">
                            <form id="notifications-focus-settings" class="" action="#" accept-charset="UTF-8" method="post">
                                <h4>关注</h4>
                                <p class="note">当有人关注你时，我们将按照你所设置的通知方式第一时间通知你.</p>
                                <div class="d-flex">
                                    <div class="form-checkbox my-1">
                                        <label class="mr-4">
                                            <input type="checkbox" name="focus_settings_email" id="focus_settings_email" value="1" tabindex="2" >Email</label>
                                        </label>
                                    </div>
                                    <div class="form-checkbox my-1">
                                        <label class="mr-4">
                                            <input type="checkbox" name="focus_settings_web" id="focus_settings_web" value="0" tabindex="2" >Web</label>
                                        </label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/common/footer.jsp"%>
<%@ include file="/WEB-INF/common/script.jsp"%>
<script>
    window.addEventListener('DOMContentLoaded', function () {
        var $alert = $('.alert');
        $alert.hide();
        $("input[type='checkbox'][value='0']").prop("checked",false);
        $("input[type='checkbox'][value='1']").prop("checked",true);

        var input = $('.form-checkbox');
        input.click(function () {
            $(this).addClass('status-indicator-success');
        });


    });
</script>
</body>
</html>
