<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.isilab.entity.ResultEntity" %>

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
    <%ResultEntity result=(ResultEntity) request.getAttribute("result");%>
    <div class="row" style="margin-top: 30px">
        <div class="row" style="text-align: center">
            <h2><%=result.getTitle()%></h2>
            <p><%=result.getDate()%></p>
        </div>
        <div class="row">
            <p style="font-size: 16px"><%=result.getContent()%></p>
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