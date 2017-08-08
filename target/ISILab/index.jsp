<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.isilab.entity.NewsEntity" %>
<%@ page import="com.isilab.entity.AcademicsEntity" %>
<%@ page import="com.isilab.entity.ResultEntity" %>
<%@ page import="com.isilab.entity.DocumentEntity" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<%@ include file="WEB-INF/head.jsp" %>
<body>
<!-- 导航栏 -->
<%@ include file="WEB-INF/navbar.jsp" %>
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
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
        <%
            List<NewsEntity> listn = (List<NewsEntity>) request.getAttribute("newslist");
            List<AcademicsEntity> lista=(List<AcademicsEntity>) request.getAttribute("academicslist");
            List<ResultEntity> listr=(List<ResultEntity>) request.getAttribute("resultlist");
            List<DocumentEntity> listd=(List<DocumentEntity>) request.getAttribute("documentlist");
        %>
        <div class="col-xs-3">
            <img src="image\news\1.jpg" class="img-responsive">
            <h3 class="h-news"><%=listn.get(0).getTitle()%>
            </h3>
            <p class="p-news"><%=listn.get(0).getSummary()%>
            </p><a href="<%=path%>/news/<%=listn.get(0).getId()%>">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-3" >
            <img src="image\news\2.jpg" class="img-responsive">
            <h3 class="h-news"><%=listn.get(1).getTitle()%>
            </h3>
            <p class="p-news"><%=listn.get(1).getSummary()%>
            </p><a href="<%=path%>/news/<%=listn.get(1).getId()%>">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-3" >
            <img src="image\news\3.jpg" class="img-responsive">
            <h3 class="h-news"><%=listn.get(2).getTitle()%>
            </h3>
            <p class="p-news"><%=listn.get(2).getSummary()%>
            </p><a href="<%=path%>/news/<%=listn.get(2).getId()%>">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-3">
            <h3 >其他相关新闻</h3>
            <ul >
                <li><a href="<%=path%>/news/<%=listn.get(3).getId()%>"><%=listn.get(3).getTitle()%>
                </a></li>
                <li><a href="<%=path%>/news/<%=listn.get(4).getId()%>"><%=listn.get(4).getTitle()%>
                </a></li>
                <li><a href="<%=path%>/news/<%=listn.get(5).getId()%>"><%=listn.get(5).getTitle()%>
                </a></li>
            </ul>
            <a href="<%=path%>/news" style="margin-left: 20px">更多&gt;&gt;</a>
        </div>
    </div>
    <div class="row" style="margin-top:20px">
        <div class="col-xs-4">
            <p>
                <font size="5px" color="#673566">ACADEMICS</font>
                <font size="3px">学术研究</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
            <%for(AcademicsEntity academicsEntity:lista){%>
            <p><%=academicsEntity.getTitle()%><a href="<%=path%>/academics/<%=academicsEntity.getId()%>">更多&gt;&gt;</a></p><%}%>
            <a href="<%=path%>/academics">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-4">
            <p>
                <font size="5px" color="#673566">ACHIEVEMENT</font>
                <font size="3px">成果展示</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
            <%for (ResultEntity resultEntity:listr){%>
            <p><a href="<%=path%>/result/<%=resultEntity.getId()%>"><%=resultEntity.getTitle()%></a></p>
            <p><%=resultEntity.getDate()%></p><%}%>
            <a href="<%=path%>/result">更多&gt;&gt;</a>
        </div>
        <div class="col-xs-4">
            <p>
                <font size="5px" color="#673566">DOCUMENT</font>
                <font size="3px">学术文献</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
            <div class="row">
                <div class="col-xs-3"><img src="image\literature\1.jpg" style="width: 100px;height: 80px" class="img-responsive"></div>
                <div class="col-xs-8 col-xs-offset-1">
                    <p><%=listd.get(0).getTitle()%><a href="<%=path%>/document/<%=listd.get(0).getId()%>">    更多&gt;&gt;</a></p>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-3"><img src="image\literature\2.jpg" style="width: 100px;height: 80px" class="img-responsive"></div>
                <div class="col-xs-8 col-xs-offset-1">
                    <p><%=listd.get(1).getTitle()%><a href="<%=path%>/document/<%=listd.get(1).getId()%>">    更多&gt;&gt;</a></p>
                </div>
            </div>
            <p style="margin-top: 10px"><a href="<%=path%>/document">更多&gt;&gt;</a></p>
        </div>
    </div>
    <div class="row">
        <p>
            <font size="5px" color="#673566">VIDEO</font>
            <font size="3px">视频</font>
        </p>
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
        <div class="col-xs-5">
            <video width="320" height="240" controls>
                <source src="video\movie1.mp4" type="video/mp4">
                <source src="video\movie1.ogg" type="video/ogg" class="responsive">
                您的浏览器不支持 HTML5 video 标签。
            </video>
        </div>
        <div class="col-xs-5">
            <video width="320" height="240" controls>
                <source src="video\movie1.mp4" type="video/mp4">
                <source src="video\movie1.ogg" type="video/ogg" class="responsive">
                您的浏览器不支持 HTML5 video 标签。
            </video>
        </div>
        <div class="col-xs-2"><a href="#">更多&gt;&gt;</a></div>
    </div>
    <div class="row" style="text-align: center; margin-top: 30px">
        <div class="col-xs-8 col-xs-offset-2">
            <P>
                <font size="3px">合作伙伴</font>
            </P>
            <p>
                <font size="5px" color="#673566">CUSTOMERS</font>
            </p>
            <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
            <div class="col-xs-2"></div>
        </div>
        <img src="image\customers.jpg" class="img-responsive">
    </div>
    <div class=" row " style="text-align: center; margin-top: 30px">
        <p>
            <font size="3px">联系方式</font>
        </p>
        <p>
            <font size="5px" color="#673566">CONTACT US</font>
        </p>
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
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
<!--底部栏-->
<%@ include file="WEB-INF/footer.jsp" %>
<!--底部栏-->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js "></script>
<script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js "><\/script>')
</script>
<script src="js/bootstrap.js "></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js "></script>
</body>
</html>