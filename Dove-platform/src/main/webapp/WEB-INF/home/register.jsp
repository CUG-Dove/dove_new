<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/6
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/common/head.jsp"%>
</head>
<body class="logged-out  min-width-0 f4">
    <%@ include file="/WEB-INF/common/top.jsp"%>
    <div role="main">
        <div class="bg-shade-gradient">
            <div class="setup-wrapper">
                <div class="setup-header setup-org">
                    <h1 ><span class="glyphicon glyphicon-grain" style="color:#7B8080;padding-top:15px;padding-right:15px;padding-bottom:15px;width:80px;"></span>欢迎加入 Dove.com</h1>
                </div>
                <div class="setup-main">
                        <form accept-charset="UTF-8" action="${ctx}register" class="setup-form" autocomplete="off" id="signup-form" method="post">
                            <div style="margin:0;padding:0;display:inline" >
                                <input type="hidden" name="utf8" value="✓">
                                <h2 class="f2-light mb-1" >用户注册</h2>
                                <dt class="input-label">
                                    <label  autocapitalize="off" autofocus="autofocus" class="control-label">用户名</label>
                                </dt>
                                <dl class="form-group">
                                    <dd>
                                        <input autocapitalize="off" autofocus="autofocus" class="form-control" id="user_login" name="username" type="text" placeholder="Username">
                                        <!--span class="note">请输入用户名.</span -->
                                    </dd>
                                </dl>
                                <dt class="input-label">
                                    <label  autocapitalize="off" autofocus="autofocus" class="control-label">邮件账号</label>
                                </dt>
                                <dl class="form-group">
                                    <dd>
                                        <input autocapitalize="off" autofocus="autofocus" class="form-control" id="user_email" name="email" type="text" size="30" placeholder="Email">
                                        <!--span class="note">我们将发送确认邮件到你的邮箱，请及时到邮箱进行确认.</span-->
                                    </dd>
                                </dl>
                                <dt class="input-label">
                                    <label  autocapitalize="off" autofocus="autofocus" class="control-label">密码</label>
                                </dt>
                                <dl class="form-group">
                                    <dd>
                                        <input autocapitalize="off" autofocus="autofocus" class="form-control" id="user_password" name="password" type="password" placeholder="Password">
                                        <!--span class="note">至少使用一个小写字母、一个数字和七个字符</span -->
                                    </dd>
                                </dl>

                                <!--dt class="input-label">
                                    <label for="user_rpassword" autocapitalize="off" autofocus="autofocus" class="control-label">确认密码</label>
                                </dt>
                                <dl class="form-group">
                                    <dd>
                                        <input autocapitalize="off" autofocus="autofocus" class="form-control" id="user_rpassword" name="rpassword" type="password" size="30">

                                    </dd>
                                </dl-->
                                <div class="form-group" style="margin-top: 50px;">
                                    <button type="submit" class="btn btn-success btn-lg" id="signup-button">注册</button>
                                </div>
                            </div>
                        </form>

                </div>
                <div class="setup-secondary">
                    <div class="setup-info-module">
                        <img src="${ctx}resources/images/QRCode.png" style="height: 180px;width: 180px;margin-left: 35px;padding-top: 14px;padding-bottom: 4px" />

                        <ul class="features-list">
                            <li class="list-divider"></li>
                            <li>
                                <strong>理念：</strong>开源  共享  共同成长
                            </li>
                            <li class="list-divider"></li>
                            <li>
                                <svg class="octicon octicon-check" aria-hidden="true"  viewBox="0 0 12 16" width="12">
                                    <path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path>
                                </svg>
                                更好、更开放的资源派台
                            </li>
                            <li>
                                <svg class="octicon octicon-check" aria-hidden="true"  viewBox="0 0 12 16" width="12">
                                    <path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path>
                                </svg>
                                更成熟、更良好的用户体验
                            </li>
                            <li>
                                <svg class="octicon octicon-check" aria-hidden="true"  viewBox="0 0 12 16" width="12">
                                    <path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path>
                                </svg>
                                更全面、更开源的项目
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/common/script.jsp"%>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#signup-form').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    username: {
                        message: '用户名验证失败',
                        validators: {
                            notEmpty: {
                                message: '用户名不能为空'
                            },
                            stringLength: {
                                min: 5,
                                max: 20,
                                message: '请输入3到30个字符'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_\. \u4e00-\u9fa5 ]+$/,
                                message: '用户名只能由字母、数字、点、下划线和汉字组成 '
                            },
                            remote : {
                                url : '${ctx}validateUserName',
                                message : "该用户名已经存在！",
                                delay : 500,
                                type : 'post',
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: '邮箱地址不能为空.'
                            },
                            emailAddress: {
                                message: '邮箱地址格有错.'
                            },
                            remote : {
                                url : '${ctx}validateEmail',
                                message : "该邮箱已经被注册！",
                                delay : 500,
                                type : 'post',
                            },
                        }
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: '邮箱地址不能为空.'
                            },
                            different: {
                                field: 'username',
                                message: '密码不能和用户一样.'
                            },
                callback: function(value, validator) {
                    // Check the password strength
                    if (value.length < 6) {
                        return {
                            valid: false,
                            message: 'The password must be more than 6 characters'
                        }
                    }

                    if (value === value.toLowerCase()) {
                        return {
                            valid: false,
                            message: 'The password must contain at least one upper case character'
                        }
                    }
                    if (value === value.toUpperCase()) {
                        return {
                            valid: false,
                            message: 'The password must contain at least one lower case character'
                        }
                    }
                    if (value.search(/[0-9]/) < 0) {
                        return {
                            valid: false,
                            message: 'The password must contain at least one digit'
                        }
                    }

                    return true;
                }
            }
                    },
                }
            });
        });
        /**
        $('#user_login').change(function () {
            var username = document.getElementById('user_login').value;
            var param = JSON.stringify({
                username:username
            });
            putJsonData(param);
        });
        $('#user_email').change(function () {
            var email = document.getElementById('user_email').value;
            var param = JSON.stringify({
                email:email
            });
            putJsonData(param);
        });
        function putJsonData(param) {
            $.ajax({
                url:'${ctx}validate',
                async : true, // 同步，会阻塞操作
                type: 'POST',
                dataType: 'text',
                data: param,
                cache: false,
                contentType: false,
                success : function (result) {
                    console.log(result);
                    if (result.toString() === 'userNameFAIL'){
                        $(this).class.addClass();
                        alert('成功执行！');
                    }
                    if (result.toString() === 'emailFAIL'){
                        alert('emailFAIL成功执行！');
                    }
                    if (result.toString() === 'success'){
                        alert('success!');
                    }
                },
                error : function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.status);
                    alert(XMLHttpRequest.readyState);
                    alert(textStatus);
                    alert("系统请求错误：" );
                }


            });
        }*/
    </script>
</body>
</html>
