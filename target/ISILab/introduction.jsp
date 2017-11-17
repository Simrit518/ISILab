<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>

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
<div class="news-content container">
    <div class="row" style="margin-top: 30px">
        <p>
            <font size="5px" color="#673566">Introduction</font>
            <font size="3px">实验室概况</font>
        </p>
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
        <div class="row">
            <img src="image\introduction.jpg" class="img-responsive">
        </div>
        <div class="row">
            智能交互与感知实验室概况，智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况
            智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况
            智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况智能交互与感知实验室概况
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
</body>
</html>