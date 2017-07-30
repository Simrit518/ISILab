<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.isilab.entity.NewsEntity" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="liuzhen">
    <link rel="icon" href="image\logo.jpg">
    <title>智能交互与感知实验室</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="navbar-static-top.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="container">
    <div style="width:auto;height:30px;border:1px solid #000;background-color: #673566"></div>
    <div class="row">
        <div class="col-xs-3">
            <a href="#"><img src="image\logo.jpg" alt="..."></a>
        </div>
        <div class="col-xs-1 col-xs-offset-8" style="margin-top: 35px">
            <div class="row">中文|English</div>
            <div class="row">
                <p style="color: #be87be">登录</p>
            </div>
        </div>
    </div>
</div>
<!-- 导航栏 -->
<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">主页</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#about">新闻公告</a></li>
                <li><a href="#about">实验室概况</a></li>
                <li><a href="#contact">科学研究</a></li>
                <li><a href="#about">课程教学</a></li>
                <li><a href="#about">科研人员</a></li>
                <li><a href="#about">活动</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
<!--导航栏结束 -->
<!-- 主容器 -->
<div class="container">
    <!-- 轮播图 -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="image\1.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="image\2.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="image\3.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="image\4.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="image\5.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">

            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">

            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- 轮播图 -->
    <div class="row" style="margin-top: 30px">
        <p>
            <font size="5px" color="#673566">NEWS</font>
            <font size="3px">新闻</font>
        </p>
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px" />
        <%
            List<NewsEntity> list=(List<NewsEntity>) request.getAttribute("newslist");
        %>
        <div class="col-xs-3">
            <img src="image\news\1.jpg">
            <h3 class="h-news"><%=list.get(0).getTitle()%></h3>
            <p class="p-news"><%=list.get(0).getContent()%></p><a href="#">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-3" style="margin-left: 30px"><img src="image\news\2.jpg">
            <h3 class="h-news"><%=list.get(1).getTitle()%></h3>
            <p class="p-news"><%=list.get(1).getContent()%></p><a href="#">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-3" style="margin-left: 30px"><img src="image\news\3.jpg">
            <h3 class="h-news"><%=list.get(2).getTitle()%></h3>
            <p class="p-news"><%=list.get(2).getContent()%></p><a href="#">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-2" style="margin-left: 30px">
            <h3 style="margin-left: 20px">其他相关新闻</h3>
            <ul>
                <li>这是一条新闻</li>
                <li>这是一条新闻</li>
                <li>这是一条新闻</li>
            </ul>
            <a href="#" style="margin-left: 20px">更多&gt;&gt;</a>
        </div>
    </div>
    <div class="row" style="margin-top:20px">
        <div class="col-xs-4">
            <p>
                <font size="5px" color="#673566">ACADEMICS</font>
                <font size="3px">学术研究</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px" />
            <p>这是一条学术研究的概要，要看详细信息请点击下方链接<a href="#">更多&gt;&gt;</a></p>
            <p>这是一条学术研究的概要，要看详细信息请点击下方链接<a href="#">更多&gt;&gt;</a></p>
            <p>这是一条学术研究的概要，要看详细信息请点击下方链接<a href="#">更多&gt;&gt;</a></p>
            <a href="#">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-4">
            <p>
                <font size="5px" color="#673566">ACHIEVEMENT</font>
                <font size="3px">成果展示</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px" />
            <p>这是一条最近的最新的成果展示这是一条最近的最新</p>
            <p>11:30 AM</p>
            <p>这是一条最近的最新的成果展示这是一条最近的最新</p>
            <p>11:30 AM</p>
            <p>这是一条最近的最新的成果展示这是一条最近的最新</p>
            <p>11:30 AM</p>
            <a href="#">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-4">
            <p>
                <font size="5px" color="#673566">DOCUMENT</font>
                <font size="3px">学术文献</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px" />
            <div class="row">
                <div class="col-xs-3"><img src="image\literature\1.jpg" style="width: 100px;height: 80px"></div>
                <div class="col-xs-8 col-xs-offset-1">
                    <p>机器学习(Machine Learning, ML)是一门多领域交叉学科，涉及概率论、统计学、逼近论、凸分析、算法复杂度理论等多门学科。专门研究计算机怎样模拟或实现人类的学习行为，以获取新的知识或技能，重新组织已有的知识结构使之不断改善自身的性能。</p>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-3"><img src="image\literature\2.jpg" style="width: 100px;height: 80px"></div>
                <div class="col-xs-8 col-xs-offset-1">
                    <p>机器学习(Machine Learning, ML)是一门多领域交叉学科，涉及概率论、统计学、逼近论、凸分析、算法复杂度理论等多门学科。专门研究计算机怎样模拟或实现人类的学习行为，以获取新的知识或技能，重新组织已有的知识结构使之不断改善自身的性能。</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <p>
            <font size="5px" color="#673566">VIDEO</font>
            <font size="3px">视频</font>
        </p>
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px" />
        <div class="col-xs-4">
            <video width="320" height="240" controls>
                <source src="video\movie1.mp4" type="video/mp4">
                <source src="video\movie1.ogg" type="video/ogg"> 您的浏览器不支持 HTML5 video 标签。
            </video>
        </div>
        <div class="col-xs-4">
            <video width="320" height="240" controls>
                <source src="video\movie1.mp4" type="video/mp4">
                <source src="video\movie1.ogg" type="video/ogg"> 您的浏览器不支持 HTML5 video 标签。
            </video>
        </div>
        <div class="col-xs-4"><a href="#">更多&gt;&gt;</a></div>
    </div>
    <div class="row" style="text-align: center; margin-top: 30px">
        <div class="col-xs-8 col-xs-offset-2">
            <P>
                <font size="3px">合作伙伴</font>
            </P>
            <p>
                <font size="5px" color="#673566">CUSTOMERS</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px" />
            <div class="col-xs-2"></div>
        </div>
        <img src="image\customers.jpg">
    </div>
    <div class=" row " style="text-align: center; margin-top: 30px">
        <p>
            <font size="3px">联系方式</font>
        </p>
        <p>
            <font size="5px" color="#673566">CONTACT US</font>
        </p>
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px" />
        <div class="col-xs-3">
            <p style="font-size: 18px;margin-left:-15px">
                <img src="image\icon\phone.png"> 咨询电话
            </p>
            <div class="row">
                <p>86-022-24358</br>
                    86-15022018727</p>
            </div>
        </div>
        <div class="col-xs-3">
            <p style="font-size: 18px">
                <img src="image\icon\email.png"> 电子邮箱
            </p>
            <div class="row">
                <p>isi@nankai.edu.cn</p>
            </div>
        </div>
        <div class="col-xs-3">
            <p style="font-size: 18px">
                <img src="image\icon\map-marker.png"> 地址
            </p>
            <div class="row">
                <p>中国●天津</br>
                    南开区卫津路94号</p>
            </div>
        </div>
        <div class="col-xs-3">
            <p style="font-size: 18px">
                <img src="image\icon\wechat.png"> 微信
            </p>
            <div class="row">
                <p>isilabdfrobot</p>
                <img src="image\qrcode.png" style="width: 80px;height: 80px">
            </div>
        </div>
    </div>
</div>
<!-- /主容器结束 -->
<div style="width:auto;height:35px;border:1px solid #000;background-color: #673566;margin-top: 30px;"></div>
<!--底部栏-->
<div style="background: #CBCBCB;">
    <div class="container">
        <div style="background:#CBCBCB ">
            <div class="col-xs-12 col-sm-3 col-md-3">
                <a href="">
                    <img class="img-responsive" src="image\nklogo.png" style="margin-top: 10px" />
                </a>
            </div>
            <div class="col-xs-12 col-sm-9 col-md-9">
                <div style="background: #CBCBCB;text-align: right;line-height: 24px;color: #FFFFFF;margin-top:10px;padding: 20px 0px;">
                    <p><a href="">关于实验室</a>&nbsp;&nbsp;&nbsp;<a href="">南开大学</a>&nbsp;&nbsp;&nbsp;<a href="">计算机与控制工程学院</a>&nbsp;&nbsp;&nbsp;<a href="">自动化系</a>&nbsp;&nbsp;&nbsp;<a href="">管理</a>&nbsp;&nbsp;&nbsp;</p>
                    <p>版权所有：南开大学 智能交互与感知实验室&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备案/许可证编号：津ICP备15020744号</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--底部栏-->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js "></script>
<script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js "><\/script>')
</script>
<script src="js\bootstrap.js "></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js "></script>
</body>

</html>