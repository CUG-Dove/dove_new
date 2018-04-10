<%--
  Created by IntelliJ IDEA.
  User: dove
  Date: 2018/4/8
  Time: 15:06
  To change this template use File | Settings | File Templates.
  Description: repositories main部分
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container new-discussion-timeline experiment-repo-nav">
    <div class="repository-content ">
        <div class="">
            <div class="repository-meta mb-0  js-repo-meta-edit js-details-container ">
                <div class="repository-meta-content col-11 mb-1">
                    <span class="col-11 text-gray-dark mr-2">用来练手的项目，请多多指教</span>
                </div>
            </div>
        </div>
        <div class="overall-summary">
            <div class="stats-switcher-viewport js-stats-switcher-viewport">
                <div class="stats-switcher-wrapper">
                    <ul class="numbers-summary">
                        <li class="commits">
                            <a href="#" target="_blank"><span class="num text-emphasized">1,239 </span>上传</a>
                        </li>
                        <li class="commits">
                            <a href="#" target="_blank"><span class="num text-emphasized">213 </span>下载</a>
                        </li>
                        <li class="commits">
                            <a href="#" target="_blank">版本号 <span class="num text-emphasized">0.0</span></a>
                        </li>
                        <li class="commits">
                            <a href="#" target="_blank"><span class="num text-emphasized">39 </span>贡献者</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="file-navigation in-mid-page">
            <div class="get-repo-menu  float-left position-relative ">
                <button class="btn btn-sm btn-primary">下  载</button>
            </div>
            <div class="BtnGroup float-left">
                <a class="btn btn-sm BtnGroup-item" href="#">上传文件</a>
                <a class="btn btn-sm BtnGroup-item" href="#">查找文件</a>
                <a class="btn btn-sm BtnGroup-item" href="#" >新建文件夹</a>
            </div>
            <div class="issues float-right">
                <a class="reponav-item" href="#" style="text-decoration: none">
                    <!--i class="icon-exclamation-sign" style="margin-right: 3px;"></i-->
                    <svg class="octicon octicon-issue-opened" width="14" height="16">
                        <path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"></path>
                    </svg>
                    <span style="margin-right: 3px;font-size: 14px;font-weight: 600">问题</span><span class="Counter">5</span>
                </a>
            </div>
        </div>
        <div class="file-wrap">
            <table class="files table-hover content-table">
                <tbody>
                <c:forEach var="dir" items="${files.directaryNames}">
                    <tr class="Dir-item selected">
                        <td class="File-icon"><span class="glyphicon glyphicon-folder-close" ></span></td>
                        <td class="File-name"><span class="css-truncate css-truncate-target" ><a href="${dir.value}/${dir.key}"> ${dir.key}</a></span></td>
                        <td class="File-brief"><span class="css-truncate css-truncate-target" >***</span></td>
                        <td class="File-create-time"><span class="css-truncate css-truncate-target" >2018-3-22 16:46:58</span></td>
                    </tr>
                </c:forEach>

                <c:forEach var="file" items="${files.fileNames}">
                    <tr class="File-item">
                        <td class="File-icon" ><span class="glyphicon glyphicon-file"></span></td>
                        <td class="File-name"><span class="css-truncate css-truncate-target"><a href="${file.value}/${file.key}"> ${file.key}</a></span></td>
                        <td class="File-brief"><span class="css-truncate css-truncate-target">***</span></td>
                        <td class="File-Create-time"><span class="css-truncate css-truncate-target">2018-3-22 16:47:06</span></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>
