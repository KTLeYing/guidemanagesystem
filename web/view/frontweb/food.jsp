<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/5/1
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>美食</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/lightbox.css">
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
<div class="banner a-banner">
    <!-- container -->
    <div class="container">
        <div class="header">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/IndexServlet">导游管理</a>
            </div>
            <div class="icons">
                <ul>
                   <%-- <li><a href="#" class="facebook"> </a></li>
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
                <li><a href="${pageContext.request.contextPath}/IndexServlet">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/ViewServlet">景区</a></li>
                <li><a href="${pageContext.request.contextPath}/view/frontweb/food.jsp" class="active">美食</a></li>
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
</div>
<!-- //banner -->
<!-- gallery -->
<div class="gallery-top">
    <!-- container -->
    <div class="container">
        <div class="gallery-info">
            <h3>美食推荐</h3>
            <p>作为导游，要熟悉各个地方的特色美食，才能更好让游客品尝到山珍海味</p>
        </div>
        <div class="gallery-grids-top">
            <div class="gallery-grids">
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms1.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms1.jpeg" alt=""/></a>
                    <p>
                        <strong>兰州牛肉面，</strong>又称兰州清汤牛肉面，是“中国十大面条”之一，是甘肃省兰州地区的风味小吃。被中国烹饪协会评为三大中式快餐之一，得到美誉“中华第一面”。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms2.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms2.jpeg" alt=""/></a>
                    <p>
                        <strong>北京烤鸭，</strong>烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。被誉为“天下美味。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms3.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms3.jpeg" alt=""/></a>
                    <p>
                        <strong>上海糯米团，</strong>糯米团是江南地区经典的地方小吃。老上海人的传统早餐，在宁波和上海的一些地摊上，均可以见到这些特色的传统早餐。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms4.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms4.jpeg" alt=""/></a>
                    <p>
                        <strong>重庆酸辣粉，</strong>重庆酸辣粉是重庆城区广为流传的一种地方传统名小吃，历来就是重庆人的最爱之一 。重庆酸辣粉的粉丝劲道弹牙、口味麻辣酸爽、浓香开胃，深受全国人民喜爱的重庆地方小吃。
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="gallery-grids gallery-grids-middle">
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms5.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms5.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>武汉热干面，</strong>热干面是中国十大面条之一，是湖北武汉最出名的小吃之一，有多种做法。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms6.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms6.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>宁波汤圆，</strong>汤圆是浙江宁波著名的特色小吃之一，也是中国的代表小吃之一，春节，元宵节节日食俗。历史十分悠久。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms7.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms7.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>糊辣汤，</strong>胡辣汤，又名糊辣汤，中原知名小吃，起源于河南省周口市西华县逍遥镇及漯河舞阳县北舞渡镇，是中国北方早餐中常见的传统汤类名吃。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms8.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms8.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>广西桂林米粉，</strong>桂林米粉是广西桂林地区历史悠久的特色传统名小吃。以其独特的风味远近闻名。
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="gallery-grids">
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms9.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms9.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>宁夏手抓羊肉，</strong>宁夏手抓羊肉是一款宁夏菜品，制作原料主要有羊肉、 花椒等。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms10.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms10.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>西安羊肉泡馍，</strong>羊肉泡馍是陕西的风味美食，尤以西安最享盛名。它烹制精细，料重味醇，肉烂汤浓，肥而不腻，营养丰富，香气四溢，诱人食欲，食后回味无穷。羊肉泡馍已成为陕西名食的“总代表。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms11.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms11.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>成都火锅，</strong>火锅是成都最具代表性的川式火锅，在当地非常火热。店面环境充满蜀韵，整洁干净，很接地气。蜀九香的锅底很多，有重口味的重油锅底，还有清淡的鲫鱼鸳鸯锅底，红汤九宫格还很值得推荐，菜品都挺新鲜，还可以根据自己口味选择调料。
                    </p>
                </div>
                <div class="col-md-3 gallery-grid">
                    <a class="example-image-link" href="/images/ms12.jpeg" data-lightbox="example-set" data-title=""><img class="example-image" src="/images/ms12.jpeg" alt="" height="128"/></a>
                    <p>
                        <strong>布拉肠粉,</strong>肠粉又叫布拉蒸肠粉，因为早市销量大，多数店家又供不应求，人们常常是排队候吃，因此又被戏称为“抢粉”。出品时以“白如雪，薄如纸，油光闪亮，香滑可口”著称。
                    </p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <script src="${pageContext.request.contextPath}/js/lightbox-plus-jquery.min.js"></script>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //gallery -->
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
