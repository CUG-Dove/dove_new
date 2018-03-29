<%--
  Created by IntelliJ IDEA.
  User: Dove
  Date: 2018/3/23
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/taglib.jsp"%>
<!doctype html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/common/head.jsp"%>
    <style>
        #banner{
            max-width:1200px;
            margin-bottom: 20px;
        }
        .swiper-slide {
            width:auto;
        }
        .swiper-container {
            width:100%;
            height: 300px;
        }
        .swiper-slide img{
            width:100%;
            height: 300px;
        }
        .swiper-pagination{
            position:relative;
            text-align: right;
            width:100%;}
        .swiper-pagination-bullet{
            background: #ffffff;
            height: 10px;
            width: 10px;
            display: inline-block;


        }
        .pic_intro{
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 48px;
            line-height: 48px;
            color: #fff;
            font-size: 20px;
            text-indent: 10px;
            background: -webkit-linear-gradient(rgba(0,0,0,0) 0%, rgba(0,0,0,1) 100%);
            background: linear-gradient(rgba(0,0,0,0) 0%, rgba(0,0,0,1) 100%);
        }
        .swiper-slide {
            text-align: left;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
    </style>
</head>

<body class="min-width-0">
    <%@ include file="/WEB-INF/common/top_logined.jsp"%>
    <div role="main" class="application-main">
        <div class="">

        </div>
        <div class="d-lg-flex container-lg p-responsive">
            <!--  left leader frame -->
            <div class="left-main my-6">
                <div id="home_leftnav">
                    <div class="left-nav" style="position: absolute; bottom: auto;">
                        <ul>
                            <div>
                                <li><a href="${ctx}main/toMainPage" class="main-menu-item" id="main-menu-item-recommend">推荐</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-hot">最热开源项目</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-focus">关注</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-information">资讯</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-AI">人工智能</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-bigData">云计算/大数据</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-blockchain">区块链</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-database">数据库</a></li>
                            </div>
                            <div>
                                <li><a href="" class="main-menu-item" id="main-menu-item-mobileDev">移动开发</a></li>
                            </div>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="col-lg-9 position-relative pr-lg-5 my-6 mr-lg-5">
                <!-- banner -->
                <div id="banner" >
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><a href="#"><img src="${ctx}/resources/images/upload/01.jpg"><div class="pic_intro">img1，请点击</div></a></div>
                            <div class="swiper-slide"><a href="#"><img src="${ctx}/resources/images/upload/02.jpg"><div class="pic_intro">img2，请点击</div></a></div>
                            <div class="swiper-slide"><a href="#"><img src="${ctx}/resources/images/upload/03.jpg"><div class="pic_intro">img3，请点击</div></a></div>
                            <div class="swiper-slide"><a href="#"><img src="${ctx}/resources/images/upload/04.jpg"><div class="pic_intro">img4，请点击</div></a></div>
                        </div>

                        <div class="swiper-pagination" style="bottom:40px;"></div>
                        <div class="swiper-button-next swiper-button-white" style="margin-top: -80px;width: 44px;right: 55px;display: none"></div>
                        <div class="swiper-button-prev swiper-button-white" style="margin-top: -80px;width: 44px;right: 55px;display: none"></div>
                    </div>

                </div>


                <ul class="clearfix">
                    <li class=" border-bottom border-gray-light py-5">
                        <div class="d-flex flex-justify-between flex-items-start ">
                            <div class="d-flex">
                                <h3 class="mb-1 f3">
                                    <a href="#" >Dove-CUG<span>/</span>Dove-platform</a>
                                </h3>
                            </div>
                        </div>
                        <p class="text-gray mb-2">Dove开源项目,是一个由两个闲得蛋疼的两个屌丝开发，项目感觉其实并没什么卵用。</p>
                        <div class="subinfo_box clearfix">
                            <a href="#" target="_blank" class="mr-2" style="margin-right: 20px">
                                <span class="subinfo_face">
                                    <!--  传入用户的头像-->
                                    <img src="${ctx}resources/images/user2.jpg" class="rounded-1" width="20" height="20" alt="">
                                </span>
                            </a>
                            <a href="#" target="_blank" class="mr-2">
                                <!-- 传入用户的名字-->
                                <span class="subinfo S_txt2">鸽子</span>
                            </a>
                            <!-- 用js 写时间 传到这里-->
                            <span class="subinfo S_txt2" id="dateTime"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class=" W_ficon ficon_praised S_ficon W_f16" ><span class="icon-thumbs-up"></span></em>
                                (<em>85168</em>)
                            </span>
                            <span class="rgt_line W_fr"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class="W_ficon S_ficon W_f16"><span class="icon-folder-close-alt"></span></em>
                                (<em>1652</em>)
                            </span>
                        </div>
                    </li>
                    <li class=" border-bottom border-gray-light py-5">
                        <div class="d-flex flex-justify-between flex-items-start ">
                            <div class="d-flex">
                                <h3 class="mb-1 f3">
                                    <a href="#" >Dove-CUG<span>/</span>Dove-platform</a>
                                </h3>
                            </div>
                        </div>
                        <p class="text-gray mb-2">Dove开源项目,是一个由两个闲得蛋疼的两个屌丝开发，项目感觉其实并没什么卵用。</p>
                        <div class="subinfo_box clearfix">
                            <a href="#" target="_blank" class="mr-2" style="margin-right: 20px">
                                <span class="subinfo_face">
                                    <!--  传入用户的头像-->
                                    <img src="${ctx}resources/images/user2.jpg" class="rounded-1" width="20" height="20" alt="">
                                </span>
                            </a>
                            <a href="#" target="_blank" class="mr-2">
                                <!-- 传入用户的名字-->
                                <span class="subinfo S_txt2">鸽子</span>
                            </a>
                            <!-- 用js 写时间 传到这里-->
                            <span class="subinfo S_txt2" id="dateTime"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class=" W_ficon ficon_praised S_ficon W_f16" ><span class="icon-thumbs-up"></span></em>
                                (<em>85168</em>)
                            </span>
                            <span class="rgt_line W_fr"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class="W_ficon S_ficon W_f16"><span class="icon-folder-close-alt"></span></em>
                                (<em>1652</em>)
                            </span>
                        </div>
                    </li>
                    <li class=" border-bottom border-gray-light py-5">
                        <div class="d-flex flex-justify-between flex-items-start ">
                            <div class="d-flex">
                                <h3 class="mb-1 f3">
                                    <a href="#" >Dove-CUG<span>/</span>Dove-platform</a>
                                </h3>
                            </div>
                        </div>
                        <p class="text-gray mb-2">Dove开源项目,是一个由两个闲得蛋疼的两个屌丝开发，项目感觉其实并没什么卵用。</p>
                        <div class="subinfo_box clearfix">
                            <a href="#" target="_blank" class="mr-2" style="margin-right: 20px">
                                <span class="subinfo_face">
                                    <!--  传入用户的头像-->
                                    <img src="${ctx}resources/images/user2.jpg" class="rounded-1" width="20" height="20" alt="">
                                </span>
                            </a>
                            <a href="#" target="_blank" class="mr-2">
                                <!-- 传入用户的名字-->
                                <span class="subinfo S_txt2">鸽子</span>
                            </a>
                            <!-- 用js 写时间 传到这里-->
                            <span class="subinfo S_txt2" id="dateTime"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class=" W_ficon ficon_praised S_ficon W_f16" ><span class="icon-thumbs-up"></span></em>
                                (<em>85168</em>)
                            </span>
                            <span class="rgt_line W_fr"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class="W_ficon S_ficon W_f16"><span class="icon-folder-close-alt"></span></em>
                                (<em>1652</em>)
                            </span>
                        </div>
                    </li>
                    <li class=" border-bottom border-gray-light py-5">
                        <div class="d-flex flex-justify-between flex-items-start ">
                            <div class="d-flex">
                                <h3 class="mb-1 f3">
                                    <a href="#" >Dove-CUG<span>/</span>Dove-platform</a>
                                </h3>
                            </div>
                        </div>
                        <p class="text-gray mb-2">Dove开源项目,是一个由两个闲得蛋疼的两个屌丝开发，项目感觉其实并没什么卵用。</p>
                        <div class="subinfo_box clearfix">
                            <a href="#" target="_blank" class="mr-2" style="margin-right: 20px">
                                <span class="subinfo_face">
                                    <!--  传入用户的头像-->
                                    <img src="${ctx}resources/images/user2.jpg" class="rounded-1" width="20" height="20" alt="">
                                </span>
                            </a>
                            <a href="#" target="_blank" class="mr-2">
                                <!-- 传入用户的名字-->
                                <span class="subinfo S_txt2">鸽子</span>
                            </a>
                            <!-- 用js 写时间 传到这里-->
                            <span class="subinfo S_txt2" id="dateTime"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class=" W_ficon ficon_praised S_ficon W_f16" ><span class="icon-thumbs-up"></span></em>
                                (<em>85168</em>)
                            </span>
                            <span class="rgt_line W_fr"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class="W_ficon S_ficon W_f16"><span class="icon-folder-close-alt"></span></em>
                                (<em>1652</em>)
                            </span>
                        </div>
                    </li>
                    <li class=" border-bottom border-gray-light py-5">
                        <div class="d-flex flex-justify-between flex-items-start ">
                            <div class="d-flex">
                                <h3 class="mb-1 f3">
                                    <a href="#" >Dove-CUG<span>/</span>Dove-platform</a>
                                </h3>
                            </div>
                        </div>
                        <p class="text-gray mb-2">Dove开源项目,是一个由两个闲得蛋疼的两个屌丝开发，项目感觉其实并没什么卵用。</p>
                        <div class="subinfo_box clearfix">
                            <a href="#" target="_blank" class="mr-2" style="margin-right: 20px">
                                <span class="subinfo_face">
                                    <!--  传入用户的头像-->
                                    <img src="${ctx}resources/images/user2.jpg" class="rounded-1" width="20" height="20" alt="">
                                </span>
                            </a>
                            <a href="#" target="_blank" class="mr-2">
                                <!-- 传入用户的名字-->
                                <span class="subinfo S_txt2">鸽子</span>
                            </a>
                            <!-- 用js 写时间 传到这里-->
                            <span class="subinfo S_txt2" id="dateTime"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class=" W_ficon ficon_praised S_ficon W_f16" ><span class="icon-thumbs-up"></span></em>
                                (<em>85168</em>)
                            </span>
                            <span class="rgt_line W_fr"></span>
                            <span class="subinfo_rgt S_txt2">
                                <em class="W_ficon S_ficon W_f16"><span class="icon-folder-close-alt"></span></em>
                                (<em>1652</em>)
                            </span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 my-6" >
                <h2 class="h1">今日推荐</h2>
                <div class="d-sm-flex flex-wrap d-lg-block gutter-sm">
                    <article class="col-sm-6 col-md-4 col-lg-12 px-sm-3 px-lg-0 my-5">
                        <a href="#">
                            <img src="${ctx}resources/images/menu_right/matlab.png" class="width-fit mb-2" width="48" alt="" >
                        </a>
                        <h1 class="h3"><a href="#">MATLAB</a></h1>
                        <p>MATLAB is a programming platform for numerical computation and visualization.</p>
                    </article>
                    <article class="col-sm-6 col-md-4 col-lg-12 px-sm-3 px-lg-0 my-5">
                        <a href="#">
                            <img src="${ctx}resources/images/menu_right/matlab.png" class="width-fit mb-2" width="48" alt="" >
                        </a>
                        <h1 class="h3"><a href="#">MATLAB</a></h1>
                        <p>MATLAB is a programming platform for numerical computation and visualization.</p>
                    </article>
                    <article class="col-sm-6 col-md-4 col-lg-12 px-sm-3 px-lg-0 my-5">
                        <a href="#">
                            <img src="${ctx}resources/images/menu_right/matlab.png" class="width-fit mb-2" width="48" alt="" >
                        </a>
                        <h1 class="h3"><a href="#">MATLAB</a></h1>
                        <p>MATLAB is a programming platform for numerical computation and visualization.</p>
                    </article>
                    <article class="col-sm-6 col-md-4 col-lg-12 px-sm-3 px-lg-0 my-5">
                        <a href="#">
                            <img src="${ctx}resources/images/menu_right/matlab.png" class="width-fit mb-2" width="48" alt="" >
                        </a>
                        <h1 class="h3"><a href="#">MATLAB</a></h1>
                        <p>MATLAB is a programming platform for numerical computation and visualization.</p>
                    </article>
                </div>
            </div>
        </div>
    </div>




<%@ include file="/WEB-INF/common/footer.jsp"%>
<%@ include file="/WEB-INF/common/script.jsp"%>
<script>
    var month = new Date().getMonth();
    var day = new Date().getDay();
    var hour = new Date().getHours();
    var minute = new Date().getMinutes();
    if (minute < 10){
        var minute = "0" + minute;
    }
    //var Milliseconds = new Date().getMilliseconds();
    document.getElementById("dateTime").innerHTML = month + "月" + day + "日" + "   " + hour + ":" + minute;


    var url = window.location.href;
    var index = url.lastIndexOf("/") + 1;
    var thisUrl = url.substring(index, url.length);
    if (thisUrl == 'toMainPage'){
        thisUrl = 'recommend';
    }
    var str = '#main-menu-item-' + thisUrl;

    window.onload = function() {
        $(str).addClass('selected');

        $('.left-nav a').mouseover(function () {
                $(this).addClass('selected');
        });
        $('.left-nav a').mouseleave(function () {
            $(this).removeClass('selected');
            $(str).addClass('selected');
        });



        var swiper = new Swiper('.swiper-container',{
            loop : true,
            autoplay:true,
            pagination: {
                el: '.swiper-pagination',
                //type: 'progressbar',
                clickable :true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
                disabledClass: 'my-button-disabled',
            },
           // pagination : {
               // el: '.swiper-pagination',
              //  clickable :true,
                //renderBullet: function (index, className) {
                  //  return '<span class="' + className + '"><image src="${ctx}/resources/images/upload/s0' + ( index  + 1 ) + '.jpg"></span>';
                //},
           // },


    });
        swiper.navigation.update();

        $('#banner').mouseover(function(){
            swiper.autoplay.stop();
        });
        $('#banner').mouseleave(function(){
            swiper.autoplay.start();
        });
    }

</script>
</body>
</html>
