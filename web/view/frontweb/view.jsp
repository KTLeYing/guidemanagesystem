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
    <title>景区</title>
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

    <style type="text/css">
        td, th{
            text-align: center;
            /*height: 40px;*/
            /*color: black;*/
        }
    </style>
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
                <li><a href="${pageContext.request.contextPath}/IndexServlet" >首页</a></li>
                <li><a href="${pageContext.request.contextPath}/ViewServlet" class="active">景区</a></li>
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
</div>
<!-- //banner -->
<!-- about -->
<!-- about-top -->
<div class="about-top">
    <!-- container -->
    <div class="container">
        <div class="about-info">
            <h3>景区排名</h3>
            <p>管理系统中综合评分前十的景点</p>
        </div>
        <div class="about-top-grids">
           <%-- <div class="col-md-8 about-top-grid">
                <h4>大年三十是最隆重的一天。早晨放几个炮后，子州人民挂灯笼，贴对联。天神对联比土地神的对联高一点点，意思是天高地低。</h4>
                <p>子洲在陕西的北部，在陕北农村进入腊月就意味着年的到来，年三十之前有一次祭祀祖宗的活动，给祖宗们坟上烧些冥币，让祖宗们去买自己喜欢的东西，过个好年，祈求保佑孙子平安无事。打扫家一般双日，除了做这些活年里年外有很多讲究的节日，想想很有意思的，现在保留的可能只有放炮，吃饺子，贴对联，偶尔也有一些人家会贴些窗花。
                </p>
            </div>
            <div class="col-md-4 about-top-grid">
                <img src="/images/hd.jpg" alt="" />
            </div>--%>
            <table class="table table-striped table-hover">
                <thead style="background: #9CB2FB">
                    <th style="font-size: 17px">排名</th>
                    <th style="font-size: 17px">景点名称</th>
                    <th style="font-size: 17px">景点等级</th>
                    <th style="font-size: 17px">景点类型</th>
                    <th style="font-size: 17px">综合评分</th>
                    <th style="font-size: 17px">地理位置</th>
                </thead>
                <c:forEach items="${viewList}" var="view" varStatus="s">
                    <tr>
                        <td>${s.count}</td>
                        <td>${view.vname}</td>
                        <td>${view.ranking}</td>
                        <td>${view.type}</td>
                        <td>${view.grade}</td>
                        <td>${view.location}</td>
                    </tr>
                </c:forEach>

            </table>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //about-top -->
<!-- about-team -->
<div class="about-team">
    <!-- container -->
    <div class="container">
        <h4>著名景区推荐</h4>
        <div class="team-grids">
            <div class="col-md-3 team-grid">
                <img src="/images/jq1.jpg" alt="" height="170">
                <h6>万里长城</h6>
                <p>长城是中国也是世界上修建时间最长、工程量最大的一项古代防御工程。1961年3月4日，长城被国务院公布为第一批全国重点文物保护单位。1987年12月，长城被列入世界文化遗产。
                   <a href="https://baike.baidu.com/item/长城/14251?fromtitle=万里长城&fromid=35257&fr=aladdin">更多>></a>
                </p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/jq2.jpg" alt="" height="170">
                <h6>故宫博物院</h6>
                <p>北京故宫是第一批全国重点文物保护单位、第一批国家5A级旅游景区、全国未成年人思想道德建设工作先进单位， 1987年入选《世界文化遗产名录》。
                    &nbsp;&nbsp;<a href="https://baike.baidu.com/item/北京故宫博物院/8663390?fromtitle=故宫博物院&fromid=5317&fr=aladdin">更多>></a>
                </p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/jq3.jpg" alt="" height="170">
                <h6>天坛公园</h6>
                <p>1961年，国务院公布天坛为“全国重点文物保护单位”。1998年被联合国教科文组织确认为“世界文化遗产”。2007年5月8日，天坛公园经国家旅游局正式批准为国家5A级旅游景区。
                    <a href="https://baike.baidu.com/item/天坛公园/3973437?fr=aladdin">更多>></a>
                </p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/jq4.jpg" alt="" height="170">
                <h6>颐和园</h6>
                <p>颐和园，中国清朝时期皇家园林，前身为清漪园，坐落在北京西郊，距城区15公里，占地约290公顷（2.9平方千米），与圆明园毗邻。它被誉为“皇家园林博物馆”，也是国家重点旅游景点。
                    &nbsp;&nbsp;<a href="https://baike.baidu.com/item/颐和园/63458?fr=aladdin">更多>></a>
                </p>
            </div>
            <div class="clearfix"> </div>
        </div>

        <div class="team-grids">
            <div class="col-md-3 team-grid">
                <img src="/images/jq5.jpeg" alt="" height="170">
                <h6>桂林山水</h6>
                <p>桂林山水是对桂林旅游资源的总称。 [1]  国家AAAAA级旅游景区，中国十大风景名胜之一，桂林山水是中国山水的代表闻名，千百年来享有“桂林山水甲天下”的美誉。
                    <a href="https://baike.baidu.com/item/桂林山水/5583?fr=aladdin">更多>></a>
                </p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/jq6.jpg" alt="" height="170">
                <h6>杭州西湖</h6>
                <p>西湖，位于浙江省杭州市西湖区龙井路1号，杭州市区西部。2007年，杭州市西湖风景名胜区被评为“国家AAAAA级旅游景区”。2011年6月24日，“杭州西湖文化景观”正式被列入《世界遗产名录》。
                    &nbsp;&nbsp;<a href="https://baike.baidu.com/item/西湖/4668821?fromtitle=杭州西湖&fromid=111124&fr=aladdin#reference-[5]-5868323-wrap">更多>></a>
                </p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/jq7.jpg" alt="" height="170">
                <h6>苏州园林</h6>
                <p>苏州园林，素有“园林之城”的美誉。1997年，苏州古典园林中的拙政园、留园、网师园和环秀山庄被列入世界文化遗产名录；2000年，沧浪亭、狮子林、耦园、艺圃和退思园作为苏州古典园林的扩展项目也被列为世界文化遗产。
                    &nbsp;&nbsp;<a href="https://baike.baidu.com/item/苏州古典园林/358248?fromtitle=苏州园林&fromid=62&fr=aladdin">更多>></a>
                </p>
            </div>
            <div class="col-md-3 team-grid">
                <img src="/images/jq8.jpg" alt="" height="170">
                <h6>丽江古城</h6>
                <p>丽江古城位于云南省丽江市古城区。1986年12月，丽江古城被国务院列为中国历史文化名城。江古城是一座具有较高综合价值和整体价值的历史文化名城，集中体现了地方历史文化和民族风俗风情，体现了当时社会进步的本质特征。
                    <a href="https://baike.baidu.com/item/丽江古城/304665?fr=aladdin">更多>></a>
                </p>
            </div>
            <div class="clearfix"> </div>
        </div>


    </div>
    <!-- //container -->
</div>

<!-- //about-team -->
<!-- about-bottom -->
<%--<div class="about-bottom">
    <!-- container -->
    <div class="container">
        <h3>陕西榆林市子洲县历史沿革</h3>
        <div class="about-bottom-grids">
            <div class="col-md-6 about-bottom-left">
                <h4>名字由来</h4>
                <p>子洲县位于陕北黄土高原丘陵沟壑区腹地，榆林市南缘。1944年从绥德、米脂、清涧、横山等县划地建县，为纪念革命烈士李子洲而命名。县域面积2042平方公里，总耕地面积137万亩，全县总人口30.39万（2017年），其中农业人口27.88万。全县辖11镇1乡1个街道办事处，279个行政村，11个居民委员会。子洲县地跨暖温带与中温带，具有大陆性季风气候特点。
                    <span>境内沟壑纵横，梁峁起伏，地势西高东低。境内地下石油、天然气资源丰富。大理河、淮宁河从西、南部穿境而过，两川道素有“米粮川”之称。佛殿堂生态建设示范园、“四大名山”、南丰寨、黄土洼湫滩等景观奇美怡人。子洲秧歌、剪纸、民歌、说书、雕刻等民间艺术在陕北很有代表性。谚语云：“米脂的婆姨绥德的汉，清涧的石板瓦窑堡的炭”，子洲兼而有之。</span>
                    子洲县位于陕北黄土高原丘陵沟壑区腹地，榆林市南缘。1944年从绥德、米脂、清涧、横山等县划地建县，为纪念革命烈士李子洲而命名。县域面积2042平方公里，总耕地面积137万亩，全县总人口30.39万（2017年），其中农业人口27.88万。全县辖11镇1乡1个街道办事处，279个行政村，11个居民委员会。子洲县地跨暖温带与中温带，具有大陆性季风气候特点。
                </p>
            </div>
            <div class="col-md-6 about-bottom-left about-bottom-right">
                <h4>演变历史</h4>
                <p>夏、商、周时期，本境属华族及其他非华族部落居住。非华族部落夏有獯鬻，殷商有鬼方，西周有严允、申戎等。春秋时为白狄之地，后归晋国。战国时属魏国，秦、魏雕阴之战（前328年）后，魏献纳上郡于秦，本境归秦。秦始皇统一六国后，本境属上郡阳周县。秦亡，项羽三分关中（前206年），本境属翟王董翳管辖。西汉时，属朔方刺史部上郡阳周县地。公元9年，王莽称帝，改国号为“新”，曾改上郡为增山，改阳周县为上陵畤，时间很短，以革命先烈李子洲名字命名，属绥德分区。1950年属绥德专区。1956年属榆林专区。 1958年省子洲县入绥德县，1961年复设。1969年属榆林地区。1999年属榆林市。
                    <span>东汉初年，阳周县裁撤，本境分属并州刺史部上郡肤施县、高奴县管辖。东汉末，为匈奴等少数民族占据。
三国和西晋时期境内为鲜卑、羌胡等少数民族所据。晋室南渡，北方为五胡十六国时期，本境先后由前秦、后秦、大夏等少数民族政权管辖。
北朝时期，北魏灭大夏，设东夏州（513），本境归东夏州朔方郡，朔方郡治所在魏平，领魏平、大斌、城中、朔方、政和五县，大斌（神龟元年〔518〕设，故址在今双庙湾）、魏平（神龟元年设，故城在今何家集乡）均在本境内。西魏时，魏平县归安宁郡，大斌县归安政郡，安政郡治所也在大斌，只领一县。此二郡都归绥州管辖，一直到北周，建置未改。</span>


                </p>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <!-- //container -->
</div>--%>
<!-- //about-bottom -->
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
