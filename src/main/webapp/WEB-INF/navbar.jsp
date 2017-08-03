<%--
  Created by IntelliJ IDEA.
  User: Simrit
  Date: 2017/7/30
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <div style="width:auto;height:30px;border:1px solid #000;background-color: #673566"></div>
    <div class="row">
        <div class="col-xs-3">
            <a href="#"><img src="<%=path%>/image/logo.jpg" alt="..."></a>
        </div>
        <div class="col-xs-2 col-xs-offset-7" style="margin-top: 35px">
            <div class="row">中文|English</div>
            <div class="row">
                <p style="color: #be87be"><a href="<%=path%>/adminlogin">登录</a></p>
            </div>
        </div>
    </div>
</div>
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
            <a class="navbar-brand" href="<%=path%>">主页</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="<%=path%>/news">新闻公告</a></li>
                <li><a href="#about">实验室概况</a></li>
                <li><a href="<%=path%>/academics">科学研究</a></li>
                <li><a href="#about">课程教学</a></li>
                <li><a href="#about">科研人员</a></li>
                <li><a href="#about">活动</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>