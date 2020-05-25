<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/5/1
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>导游管理首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Transit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%--    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />--%>
    <!-- Custom Theme files -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<%--    <script src="js/jquery-1.11.1.min.js"> </script>--%>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
</head>
<body>
<!-- banner -->
<div class="banner">
    <!-- container -->
    <div class="container">
        <div class="header">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/IndexServlet">导游管理</a>
            </div>
            <div class="icons">
                <ul>
                    <%--<li><a href="#" class="facebook"> </a></li>
                    <li><a href="#" class="facebook twitter"> </a></li>
                    <li><a href="#" class="facebook chrome"> </a></li>
                    <li><a href="#" class="facebook dribbble"> </a></li>--%>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="top-nav">
            <span class="menu">菜单</span>
            <ul class="nav1">
                <li><a href="${pageContext.request.contextPath}/IndexServlet" class="active">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/ViewServlet">景区</a></li>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/food.jsp">美食</a></li>
<%--                <li><a href="${pageContext.request.contextPath}/view/frontweb/food.jsp">交通</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/accomdation.jsp">住宿</a></li>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/guide.jsp">导游中心</a></li>
<%--                <li><a href="#news" class="scroll">导游中心</a></li>--%>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/admin.jsp">管理员中心</a></li>
            </ul>
            <!-- script-for-menu -->
            <script>
                $( "span.menu" ).click(function() {
                    $( "ul.nav1" ).slideToggle( 300, function() {
                        // Animation complete.
                    });
                });
            </script>
            <!-- /script-for-menu -->
        </div>
    </div>
    <!-- //container -->
    <div class="banner-text">
        <!-- container -->
        <div class="container">
            <ul>
                <li>一个优秀的的导游才能让自己的旅游团队变得更优秀。</li>
            </ul>
        </div>
        <!-- //container -->
    </div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-top-slide">
    <div class="banner-bottom-top">
        <h4>全民抗疫</h4>
        <p>团结一致，万众一心，早日战胜疫情，武汉加油，中国加油</p>
    </div>
    <div class="banner-bottom-bottom">
        <div class="banner-top-slide-grids">
            <script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider3").responsiveSlides({
                        auto: true,
                        pager: true,
                        nav: false,
                        speed: 500,
                        namespace: "callbacks",
                        before: function () {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function () {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });

                });
            </script>
            <div  id="top" class="callbacks_container">
                <ul class="rslides" id="slider3">
                    <li>
                        <div class="banner-slid">
                            <h3>同舟共济</h3>
                            <p>居家隔离，减少外出，就是最好的防护;</br>
                                听从号召尽量待在家中，不串门不聚会;</br>正确佩戴口罩，做好防护，养成良好卫生习惯。
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="banner-slid">
                            <h3>坚定信心</h3>
                            <p>科学宣传疫情防护知识，提高公众自我保护意识;</br>
                                加强防控，一起加油。众志成城，抗击疫情;</br>
                                疫情就是命令，防控就是责任。
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- welcome -->
<div class="welcome">
    <!-- container -->
    <div class="container">
        <div class="welcome-info">
            <h3>Hello there!</h3>
            <h5>新的一年，导游打卡引领团队的正确姿势</h5>
            <h4>你要不要跟我走？&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/view/frontweb/follow-me.jsp">嗯，点这里>></a></h4>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //welcome -->
<div class="copyrights">Collect from </div>
<!-- banner-bottom -->
<div class="banner-bottom">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-info">
            <h3>成为一名优秀的导游</h3>
            <p>如何让自己成为一名优秀的导游，让自己受到旅客的青眯，让自己在导游之路上展开飞跃的翅膀</p>
        </div>
        <div class="banner-bottom-grids">
            <div class="col-md-6 banner-bottom-grid">
                <div class="col-md-5 banner-bottom-left">
                    <img src="/images/gui1.jpg" alt="">
                </div>
                <div class="col-md-7 banner-bottom-right">
                    <h4>能力培养</h4>
                    <p>
                        实施旅行社的接待计划，监督各地接待单位的执行情况和接待质量；
                        协调领队、地陪、司机等各方面接待人员加强合作，做好旅行各站的衔接工作；
                        配合、督促地方接待单位安排好旅游者的食、宿、交通和参观、游览活动，照顾好客人的生活起居；
                        维护旅游者的人身和财物安全，处理好各类突发事件，并能提供与之相关的延伸服务；
                        耐心解答旅游者提出的问题；
                        反映旅游者的意见和要求，开展市场调研工作，协助开发 、设计新的旅游产品。
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-6 banner-bottom-grid">
                <div class="col-md-5 banner-bottom-left">
                    <img src="/images/gui3.jpg" alt="" height="197">
                </div>
                <div class="col-md-7 banner-bottom-right">
                    <h4>熟知旅客</h4>
                    <p>
                        做为导游，在与游客相处的时候要亲切、博学，不可太随意。导游讲解内容对游客要有一定的吸引力。可以利用名人效应，
                        比如最近比较火的《花儿与少年》，他们走过的地点，游玩过的景区可以用来做为对比，也可以讲一些游客爱听的八卦，
                        增强游客与导游的互动性。玩一些简单的游戏，迅速的让游客们感情升温，让他们能够意识到已经是一个团队，要互帮和互助，
                        共同进退。
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- container -->
</div>
<!-- //banner-bottom -->
<!-- news -->
<div id="news" class="news">
    <div class="container">
        <div class="news-text">
            <h3>导游经验专区</h3>
            <p>作为一个导游，特别是一个新手，开始可能会对导游行业比较迷茫，以下是以下宝贵的经验，希望您在工作中取得更大的进步！</p>
        </div>
        <div class="news-grids">
            <div class="col-md-4 news-grid">
                <h4>经验一</h4>
<%--                <span>2020.02.07</span>--%>
                <img src="/images/jy.png" alt="" height="230">
                <div class="news-info">
                    <p>
                        在此次的工作总结中我要为大家分享一点我的带团经验。多沟通、交朋友。沟通要从了解做起，旅游者的性格大致分为两大类：外向型、
                        内向型。外向型的活泼、 爱交际、喜讲话、多点子、热心肠，另一面又急躁、好动、好胜、散漫，这类人好沟通，但不稳定。
                        内向型的稳重、冷静、有主见、情绪稳定，另一面少言、孤傲、忧郁，这类人不易沟通，但却很重感情，一但认可你不会轻易改变。
                        作为导游要通过观察、交流了解游客，正确的区分客人的性格类型，采用灵活的方法，在旅游活动中，导游和旅游者不仅是服务与被服务的关系，
                        更是合作伙伴，只有游客的通力合作，旅游活动才能顺利进行并达到良好的效果。和游客交朋友，要有 一颗平常的心态和包容的心态，和游客建立平等的关系，
                        不能厚此薄彼;导游员和游客相处时不要争强好胜，满足一时的虚荣，作嘴巴上的
                        胜利者，要保持融洽的气氛，建立“君子”式的朋友关系。
                    </p>
                </div>
            </div>
            <div class="col-md-4 news-grid">
                <h4>经验二</h4>
<%--                <span>2020.02.07</span>--%>
                <img src="/images/jy.png" alt="" height="230">
                <div class="news-info">
                    <p>
                        如何成为一名优秀的导游员，不仅要博览群书，而且还得要更多的技巧。这方面的内容是由全国优秀导游员刘自若老师给我们上的，我的内心真是波澜起伏。
                        参加这次岗前培训我是带着一颗“看看的”的心来的。“如果不是真正热爱旅游行业，请您另谋高就！因为仅仅靠喜欢旅游是填不您的饱肚子和欲望！ 只有热爱才
                        能把旅游当成事业来奋斗，只有 热爱爱才能把旅游当成理想来坚持如果热爱导游工作，再苦再累无怨无悔；如果热爱导游工作，文化苦旅本身就是一种精神财富!
                        ”这是刘自若老师说的一段意义深刻的话。我很惭愧。我的这种行为是对导游的一种漠视。在外人看来导游是很赚钱的职业，导游是多金的，那巨大的回扣。然而
                        又有多少的人知道做为一个导游是多么辛苦的职业，成为一名优秀的导游员背后付出的又是多少的艰辛。所以才有很多的优秀人才离开了这个岗位呢！
                    </p>
                </div>
            </div>
            <div class="col-md-4 news-grid">
                <h4>经验三</h4>
<%--                <span>2020.02.07</span>--%>
                <img src="/images/jy.png" alt="" height="230">
                <div class="news-info">
                    <p>
                        以下是我带团来的大致小结：  1：熟悉线路：团前准备一定要充分，线路熟记于心，多请
                        教老导游，但也并不能轻信别人的提议，要做到有把握，有依据，才能万无一失。  2：服务工作要热心，细心：特别是旺季，一定要提醒旅游
                        注意事项，方可做到防患于未然。  3：注意协调工作，安排好游客的同时，也要妥善处理好客人，司机，地
                        陪旅行社和景区的关系。  4：导游要以不变应万变，出现问题也不能自己先乱了阵脚。 5：书到用时方恨少，导游所知道的知识必须广泛，
                        因此要不断的学习，给自己充电。每次带团回来也要及时的总结教训，积累经验。  6：维护旅行社的信誉同时也要保护好游客的权益，当你为
                        客人利益着想时，当客人意见不统一或遇到意外问题时，客人也会尊重和理解你和旅行社的安排。 
                        7：最后，要及时解决客人遗留的问题，不要把问题留到最后。
                    </p>
                </div>
            </div>
            <%--<div class="col-md-3 news-grid">
                <h4>经验四</h4>
&lt;%&ndash;                <span>2020.02.07</span>&ndash;%&gt;
                <img src="/images/ticket.jpg" alt="">
                <div class="news-info">
                    <p>柏全山位于瓜园则湾乡政府驻地南3公里处。据传说，此山曾有4株枝叶繁茂的大柏树，故名柏全山。柏全山北高南低，山巅上有一古庙，主奉天皇、地皇、人皇，简称为“三皇庙”。坐北面南，正殿为三孔硬山形顶拱式砖窑，整个寺院虽然面积不大，但布局合理，层次分明，有泥塑五十余尊，保持有晚清风格。</p>
                </div>
            </div>--%>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //news -->

<div class="banner-bottom">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-info">
            <h3>最新资讯</h3>
            <p>导游要及时了解最新的旅游资讯，才能让旅行更方便、更高效</p>
        </div>
        <div class="banner-bottom-grids">
            <div class="col-md-3 banner-bottom-grid">
                <p  style="font-weight: bold; font-size: 25px">景区资讯&nbsp;&nbsp;<span style="font-size: 15px; font-weight: normal">Attractions</span></p>
                <br>
                <img src="/images/view.PNG" height="140" width="255">
                <div class="banner-bottom-right" style="border: 2px solid whitesmoke">
                    <div style="padding-left: 10px; padding-top: 10px; padding-bottom: 10px; color: white">
                        <c:forEach items="${newsList1}" begin="0"  end="0" var="news1"  >
                            <div>
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news1.url}">${news1.title}</a><br>
                            </div>
                        </c:forEach>

                        <c:forEach items="${newsList1}" begin="1"  var="news1" >
                            <div style="padding-top: 15px">
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news1.url}">${news1.title}</a><br>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-3 banner-bottom-grid">
                <p style="font-weight: bold; font-size: 25px">酒店资讯&nbsp;&nbsp;<span style="font-size: 15px; font-weight: normal">Hotel</span></p>
                <br>
                <img src="/images/hotel.PNG" height="140" width="255">
                <div class="banner-bottom-right" style="border: 2px solid whitesmoke">
                    <div style="padding-left: 10px; padding-top: 10px; padding-bottom: 10px;  color: white">
                        <c:forEach items="${newsList2}" begin="0"  end="0" var="news2"  >
                            <div>
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news2.url}">${news2.title}</a><br>
                            </div>
                        </c:forEach>

                        <c:forEach items="${newsList2}" begin="1"  var="news2" >
                            <div style="padding-top: 15px">
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news2.url}">${news2.title}</a><br>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-3 banner-bottom-grid">
                <p  style="font-weight: bold; font-size: 25px">交通资讯&nbsp;&nbsp;<span style="font-size: 15px; font-weight: normal">Traffic</span></p>
                <br>
                <img src="/images/traffic.PNG" height="140" width="255">
                <div class="banner-bottom-right" style="border: 2px solid whitesmoke">
                    <div style="padding-left: 10px; padding-top: 10px; padding-bottom: 10px; color: white">
                        <c:forEach items="${newsList3}" begin="0"  end="0" var="news3"  >
                            <div>
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news3.url}">${news3.title}</a><br>
                            </div>
                        </c:forEach>

                        <c:forEach items="${newsList3}" begin="1"  var="news3" >
                            <div style="padding-top: 15px">
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news3.url}">${news3.title}</a><br>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-3 banner-bottom-grid">
                <p  style="font-weight: bold; font-size: 25px">旅行资讯&nbsp;&nbsp;<span style="font-size: 15px; font-weight: normal">Travel</span></p>
                <br>
                <img src="/images/travel.PNG" height="140" width="255">
                <div class="banner-bottom-right" style="border: 2px solid whitesmoke">
                    <div style="padding-left: 10px; padding-top: 10px; padding-bottom: 10px; color: white">
                        <c:forEach items="${newsList4}" begin="0"  end="0" var="news4"  >
                            <div>
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news4.url}">${news4.title}</a><br>
                            </div>
                        </c:forEach>

                        <c:forEach items="${newsList4}" begin="1"  var="news4" >
                            <div style="padding-top: 15px">
                                <i class=" fa fa-circle" style="font-size: 10px; color: #005AB5"></i>&nbsp;<a href="${news4.url}">${news4.title}</a><br>
                            </div>
                        </c:forEach>

                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- container -->
</div>

<!-- footer -->
<div class="footer">
    <!-- container -->
    <div class="container">
        <div class="col-md-6 footer-left">
            <h3>目标</h3>
            <br>
            <%--<form>
                <input type="text" placeholder="电子邮件,例如1435469178@qq.com" required="">
                <input type="submit" value="提交">
            </form>--%>
            <p style="color: white">
                专为导游打造的旅行管理平台
            </p>
        </div>
        <div class="col-md-3 footer-middle">
            <h3>地址</h3>
            <div class="address">
                <p>
                    广东省湛江市岭南师范学院
                </p>
            </div>
            <div class="phone">
                <p>0573-88731088</p>
            </div>
        </div>
        <div class="col-md-3 footer-right">
            <div class="f-logo">
                <a href="${pageContext.request.contextPath}/IndexServlet">导游管理</a>
            </div>
<%--            <p>陕北黄土高原丘陵沟壑区腹地，榆林市南缘</p>--%>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- //container -->
</div>
<!-- //footer -->
<!-- copyright -->
<div class="copyright">
    <!-- container -->
    <div class="container">
        <div class="copyright-left">
            <p>Copyright © 2020 MZL. All rights reserved.</p>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- copyright -->
</body>
</html>


