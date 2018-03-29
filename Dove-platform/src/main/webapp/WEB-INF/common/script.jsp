<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/4
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- jQuery -->
<script src="${ctx}resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${ctx}resources/vendors/bootstrap/js/bootstrap.min.js"></script>
<!-- bootstrapvalidator -->
<script src="${ctx}resources/vendors/bootstrapvalidator/dist/js/bootstrapValidator.min.js"></script>
<!-- jquery-confirm -->
<script src="${ctx}resources/vendors/jquery-confirm/dist/jquery-confirm.min.js"></script>
<!-- cropperjs -->
<script src="${ctx}resources/vendors/cropperjs/dist/cropper.min.js"></script>



<!-- canvas-to-blob -->
<script src="${ctx}resources/js/canvas-to-blob.min.js"></script>
<!-- cropperjs -->
<script src="${ctx}resources/vendors/swiper-4.1.6/dist/js/swiper.min.js"></script>

<script>
    //var menu_url = "${ctx}";
    var url = window.location.href;
    var index = url.lastIndexOf("/") + 1;
    var thisUrl = url.substring(index, url.length);
    var str = '#menu-' + thisUrl;
    window.onload = function () {
        $(str).addClass('selected');
    };
</script>


<script src="${ctx}resources/js/canvas-to-blob.min.js"></script>

