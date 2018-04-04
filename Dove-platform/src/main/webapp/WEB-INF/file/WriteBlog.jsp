<%--
  Created by IntelliJ IDEA.
  User: zy
  Date: 2018/3/7
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <title>写日志</title>
    <!-- JQuery-->
    <script src="${ctx}resources/vendors/jquery/dist/jquery.min.js"></script>
    <%@ include file="common/markdown.jsp" %>
    <%@ include file="common/head.jsp"%>
    <link href="${ctx}resources/css/file-blog-common.css" rel="stylesheet">
</head>


<body>
<div id="layout">
    <%@ include file="/WEB-INF/common/top_logined.jsp" %>
    <div class="application-main" role="main">
        <div class="container">
            <div class="pos-left ">
                <%@ include file="common/left-menu.jsp"%>
            </div>
            <div class="pos-right ">
                <div class="form-Blog-Writing ">
                <div class="title"><input class="form-control" type="text" placeholder="请输入标题名称"></div>
                <div class="test-editormd" id="test-editormd">
                    <textarea style="display:none;" class="editormd-html-textarea" id="editormd"></textarea>
                    <textarea class="editormd-html-textarea" name="text" id="editormdhtml"></textarea>
                    </textarea>
                </div>
                <button class="btn btn-info" onclick="save_blog()">保存草稿</button>
                <button class="btn btn-info" onclick="submit_blog()">发布博客</button>
                </div>
            </div>
        </div>
    </div>
</div>

    <%@ include file="/WEB-INF/common/footer.jsp"%>
    <%@ include file="/WEB-INF/common/script.jsp"%>
<script type="text/javascript">
    var testEditor;

    $(function () {
        testEditor = editormd("test-editormd", {
            width: "95%",
            height: "600px",
            path: "/resources/vendors/md/lib/",
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL: "/Blog/doUploadImg",
            saveHTMLToTextarea: true
        })
    });

    function submit_blog() {
        var htmlco = $("#editormdhtml").val();
        alert(htmlco);
        $.ajax(
            {
                data: {'html': htmlco, 'title': "123"},
                dataType: 'text',
                success: function (data) {
                    alert(data);
                },
                type: 'post',
                url: '/Blog/doUploadBlog'
            }
        );
    }

</script>
</body>
</html>
