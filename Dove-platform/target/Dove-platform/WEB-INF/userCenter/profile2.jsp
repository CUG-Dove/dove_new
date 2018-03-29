<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/13
  Time: 19:45
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
<div class="alert" role="alert"></div>
<div class="application-main" role="main">
    <div id="js-pjax-container" data-pjax-container>
        <div class="page-content container clearfix">

            <%@ include file="/WEB-INF/userCenter/menu.jsp"%>
            <div class="col-9 float-left">
                <div class="" style="border: 1px #e1e4e8 solid;padding: 20px;font-size: small" >
                    <div class="Subhead mt-0 mb-0" >
                        <h2 class="Subhead-heading" >我的资料</h2>
                    </div>
                    <form accept-charset="UTF-8"  class="columns js-uploadable-container js-upload-avatar-image is-default" id="user_profile" method="post">
                        <!--div style="margin:0;padding: 0;display: inline;">
                            <input type="text" name="" id="">
                        </div-->
                        <dl  class="form-group edit-profile-avatar mr-4 float-right">
                            <dt>
                                <label for="upload-profile-picture">用户头像</label>
                            </dt>
                            <dd class="avatar-upload-container clearfix">
                                <img class="avatar rounded-2" id="avatar" name="avatar" src="${ctx}settings/showUserPicture" width="200" height="200" alt="avatar">
                                <div class="avatar-upload">
                                    <label class="position-relative btn button-change-avatar mt-3 width-full text-center">
                                        更换头像
                                        <input id="upload-profile-picture" type="file" class="manual-file-chooser width-full height-full ml-0 js-manual-file-chooser" name="image" accept="image/*">
                                    </label>
                                    <div class="upload-state loading">
                                        <button type="button" class="btn mt-3 width-full text-center" disabled>
                                            <img width="16" height="16" alt="" class="v-align-text-bottom" src="${ctx}resources/images/loading2.gif">
                                            头像加载中...
                                        </button>
                                    </div>
                                </div>
                            </dd>

                        </dl>

                        // model弹出框
                        <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="modalLabel">剪裁你的头像</h5>
                                        <span aria-hidden="true">&times</span>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="img-container">
                                            <img id="image" src="${ctx}settings/showUserPicture">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                        <button type="button" class="btn btn-primary" id="crop">提交</button>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <dl class="form-group ">
                            <dt>
                                <label for="user_full_name" style="display: block;margin-bottom: 7px;cursor: default;">昵称</label>
                            </dt>
                            <dd >
                                <input class="form-control" type="text" id=" user_full_name"  tabindex="2" name="user_full_name" placeholder="昵称">
                            </dd>
                        </dl>
                        <dl class="form-group">
                            <dt>
                                <label for="user_profile_remark" >简介</label>
                            </dt>
                            <dd class="user-profile-bio-field-container">
                                <textarea class="form-control user-profile-bio-field" cols="40" rows="20" id="user_profile_remark"   name="user_profile_remark" placeholder="请介绍自己"></textarea>
                            </dd>
                            <p class="note">
                                你的<strong>简介信息</strong>将会被其他用户看到
                            </p>
                        </dl>
                        <dl class="form-group">
                            <dt>
                                <label for="user_profile_url">URL</label>
                            </dt>
                            <dd >
                                <input class="form-control" type="url" id="user_profile_url"  name="user_profile_url" size="30">
                            </dd>
                            <p class="note">
                                可以填写<strong> @博客、个人主页</strong> 等URL
                            </p>
                        </dl>
                        <dl class="form-group">
                            <dt>
                                <label for="user_profile_company">公司</label>
                            </dt>
                            <dd class="user-profile-company-field-container">
                                <input autocomplete="off" class="form-control" type="text" id="user_profile_company"  name="user_profile_company" size="30">
                            </dd>
                        </dl>
                        <hr></hr>
                        <dl class="form-group">
                            <dt>
                                <label for="user_profile_localtion">所在地</label>
                            </dt>
                            <dd>
                                <input class="form-control" id="user_profile_localtion" name="user_profile_localtion" size="30" type="text">
                            </dd>
                        </dl>
                        <p>
                            <button class="btn btn-success btn-block" style="width: 120px;" type="button" onclick="updateProfile();">更新用户信息</button>
                        </p>
                    </form>
                    <p class="note">
                        你的个人信息将会保存，我们将保证你的信息不会被泄漏。更多的请看我们的<a href="#">个人信息保护</a>条例。
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




<%@ include file="/WEB-INF/common/script.jsp"%>
<script>
    window.addEventListener('DOMContentLoaded', function () {
        var avatar = document.getElementById('avatar');
        var image = document.getElementById('image');
        var input = document.getElementById('upload-profile-picture');
        var $alert = $('.alert');
        var $modal = $('#modal');
        var cropper;
        input.addEventListener('change', function (e) {
            var files = e.target.files;
            var done = function (url) {
                input.value = '';
                image.src = url;
                $alert.hide();
                $modal.modal('show');
            };
            var reader;
            var file;
            var url;

            if (files && files.length > 0) {
                file = files[0];

                if (URL) {
                    done(URL.createObjectURL(file));
                } else if (FileReader) {
                    reader = new FileReader();
                    reader.onload = function (e) {
                        done(reader.result);
                    };
                    reader.readAsDataURL(file);
                }
            }
        });
        $modal.on('shown.bs.modal', function () {
            cropper = new Cropper(image, {
                aspectRatio: 1,
                viewMode: 3,
            });
        }).on('hidden.bs.modal', function () {
            cropper.destroy();
            cropper = null;
        });

        document.getElementById('crop').addEventListener('click', function () {
            var initialAvatarURL;
            var canvas;

            $modal.modal('hide');

            if (cropper) {
                canvas = cropper.getCroppedCanvas({
                    width: 160,
                    height: 160,
                });

                initialAvatarURL = avatar.src;
                avatar.src = canvas.toDataURL();
                $alert.removeClass('alert-success alert-warning');


                var formData = new FormData();
                //formData.append('avatar', blob);

                $.ajax({
                    url:'${ctx}settings/profile/updateUserPicture',
                    method: 'POST',
                    data: {image:avatar.src},
                    dataType:"json",
                    success: function (result) {
                        document.getElementById('avatar-left').src = '${ctx}settings/showUserPicture?time='+ new Date().getTime();
                        $alert.show().addClass('alert-success').text('Upload success');
                    },
                    error: function (result) {
                        avatar.src = initialAvatarURL;
                        $alert.show().addClass('alert-warning').text('Upload error');
                    },
                    complete: function () {

                    },
                });

            }
        });
    });
</script>
</body>

</html>
