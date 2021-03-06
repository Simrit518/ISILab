<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.isilab.entity.AcademicsEntity" %>

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
            <font size="5px" color="#673566">Academics</font>
            <font size="3px">学术研究</font>
        </p>
        <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
        <!-- 新闻列表表单 -->
        <form action="academics" id="academicsPageFrom">
            <%
                List<AcademicsEntity> list = (List<AcademicsEntity>) request.getAttribute("academicslist");
                int currentPage = (Integer) request.getAttribute("page");//当前页
                int pageTotal = (Integer) request.getAttribute("pageTotal");//页码数
            %>
            <div class="list-group">
                <%for (AcademicsEntity n : list) {%>
                <a href="<%=path%>/academics/<%=n.getId()%>" class="list-group-item"><%=n.getTitle()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=n.getDate()%></a>
                <%}%>
            </div>

            <!-- 翻页 -->
            <input name="page" id="page" type="hidden" value="1"/>
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li
                            <%if (currentPage == 1) { %>
                            class="disabled"
                            <%} %>>
                        <a href="javascript:pageFunc(1)" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <%
                        for (int i = 0; i < pageTotal; i++) {
                    %>
                    <li<%if (currentPage == i + 1) { %>
                            class="active"
                            <%} %>><a href="javascript:pageFunc(<%=i+1%>)"><%=i + 1 %>
                    </a></li>
                    <%
                        }
                    %>
                    <li<%if (currentPage == pageTotal) { %>
                            class="disabled"
                            <%} %>>
                        <a href="javascript:pageFunc(<%=pageTotal%>)" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- 翻页结束 -->
        </form>
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
<script src="js/acalist.js "></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js "></script>
</body>
</html>