<%--
  Created by IntelliJ IDEA.
  User: dove
  Date: 2018/4/7
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- jQuery -->
<script src="${ctx}resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${ctx}resources/vendors/bootstrap/js/bootstrap.min.js"></script>



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

