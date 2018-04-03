<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/29
  Time: 17:22
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
                        <h2 class="Subhead-heading" >邮件</h2>
                    </div>
                    <ul class="Box list-style-none">
                        <li class="Box-row clearfix css-truncate settings-email">
                            <span class="css-truncate-target" >756891553@qq.com</span>
                            <span class="label label-success ml-1"  data-toggle="tooltip" data-placement="bottom" title="此邮件将用于与账户相关的通知(例如帐户更改，密码重置等)">账号关联</span>
                            <span class="label label-default ml-1"  data-toggle="tooltip" data-placement="bottom" title="邮件将不会被用作网站操作的“发件人”地址，将会改用为本网站给定的邮箱地址">私密邮箱</span>
                            <span class="label Label--outline ml-1 "  data-toggle="tooltip" data-placement="bottom" title="此邮箱地址将成为默认通知邮箱(即:对问题的回复,请求等)">通知信息</span>
                            <span class="email-actions">
                                <from class="">
                                </from>
                            </span>
                        </li>
                    </ul>
                    <form class="modify_user_email" id="modify_user_email" action="#" accept-charset="UTF-8" method="post">
                        <dl class="form-group">
                            <dt><label for="email">修改邮件</label></dt>
                            <dd>
                                <input class="form-control short" type="email" name="user_email" id="email" required="required" >
                                <button class="btn" type="submit" >修改</button>
                            </dd>
                        </dl>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>



<%@ include file="/WEB-INF/common/footer.jsp"%>
<%@ include file="/WEB-INF/common/script.jsp"%>
<script>
    var $alert = $('.alert');
    $alert.hide();
    $(function () { $("[data-toggle='tooltip']").tooltip(); });
</script>
</body>
</html>
