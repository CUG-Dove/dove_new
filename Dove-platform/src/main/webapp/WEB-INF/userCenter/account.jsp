<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/12
  Time: 16:18
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
    <div class="alert" role="alert" id="alert" style="margin-bottom:0px;">
        <a href="#" class="close" data-dismiss="alert">
            &times;
        </a>
        <strong id="alert_text" style="margin-left: 270px;"></strong>
    </div>
    <div class="application-main" role="main">
        <div id="js-pjax-container" data-pjax-container>
            <div class="page-content container clearfix">

                <%@ include file="/WEB-INF/userCenter/menu.jsp"%>
                <div class="col-9 float-left">
                    <div class="" style="border: 1px #e1e4e8 solid;padding: 20px;font-size: small" >
                        <div class="Subhead mt-0 mb-0" >
                            <h2 class="Subhead-heading" >修改密码</h2>
                        </div>
                        <form accept-charset="UTF-8"  class="eidt_user"  id="updatePwd_form">
                            <!--div style="margin:0;padding: 0;display: inline;">
                                <input type="text" name="" id="">
                            </div-->
                            <dl class="form-group password-confirmation-form">
                                <dt>
                                    <label for="user_old_password" style="display: block;margin-bottom: 7px;cursor: default;">原来的密码</label>
                                </dt>
                                <dd >
                                    <input class="form-control form-control" type="password" id="user_old_password" required="required" tabindex="2" name="old_password">
                                </dd>
                            </dl>
                            <dl class="form-group password-confirmation-form">
                                <dt>
                                    <label for="user_new_password" style="display: block;margin-bottom: 7px;cursor: default;">新的密码</label>
                                </dt>
                                <dd >
                                    <input class="form-control form-control" type="password" id="user_new_password" required="required" tabindex="2" name="new_password">
                                </dd>
                            </dl>
                            <dl class="form-group password-confirmation-form">
                                <dt>
                                    <label for="user_confirm_new_password">再次输入新密码</label>
                                </dt>
                                <dd >
                                    <input class="form-control form-control" type="password" id="user_confirm_new_password" required="required" tabindex="2" name="confirm_new_password">
                                </dd>
                            </dl>
                            <p>
                                <button class="btn btn-default mr-2" id="updatePwd" type="button" onclick="update();" style="background-color: #eff3f6;background-image: linear-gradient(-180deg, #fafbfc 0%, #eff3f6 90%);width: 130px;" >修改密码</button>
                                <span>
                                    <a href="#" style="font-size: 12px;font-weight: 600">忘记密码？</a>
                                </span>
                            </p>
                        </form>
                        <p class="text-small text-gray mt-3" style="letter-spacing: 0.3px;">
                            <i class="icon-info-sign" style="font-size: medium"></i> <a href="#">忘记密码</a>可以通过邮件或者<a href="#">密保问题</a>进行找回，更多的详细信息请查看<a herf="#">隐私保护</a>
                        </p>
                        <div class="Subhead Subhead--spacious">
                            <h2 class="Subhead-heading">增加密保问题</h2>
                        </div>
                        <p style="padding-bottom: 20px">
                            增加密保问题将为你的账户提供更强的
                            <a href="#">隐私保护</a>
                        </p>
                        <p>
                            <a class="btn btn-default" style="background-color: #eff3f6;background-image: linear-gradient(-180deg, #fafbfc 0%, #eff3f6 90%)" href="#" tabindex="3">增加密保问题</a>
                        </p>
                    </div>
                </div>
            </div>
            <!--div class="" style="width: 290px;float: right !important;border: 1px #e1e4e8 solid;padding: 20px;font-size: small;margin-top: -520px;margin-right: 10px;">
                <div class="Subhead mt-0 mb-0" >
                    <h2 class="Subhead-heading" >xxx</h2>
                </div>
            </div-->
        </div>
    </div>

<%@ include file="/WEB-INF/common/footer.jsp"%>
<%@ include file="/WEB-INF/common/script.jsp"%>

<script>
    var $alert = $('.alert');
    $alert.hide();


    function update(){
        $.ajax({
            url: '${ctx}settings/account/updatePwd?time=' + new Date().getTime(),
            type: 'POST',
            dataType: 'json',
            data:$("#updatePwd_form").serialize(),
            success:function (result) {
                $("input[type='password']").val('');
                $alert.show().addClass('alert alert-success');
                $('#alert_text').text('Congratulation！修改成功.');
            },
            error: function () {
                $alert.show().addClass('alert alert-warning');
                $('#alert_text').text('Sorry！修改失败.');
            }
        });
    }

</script>

</body>

</html>
