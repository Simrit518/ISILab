<%@ page language="java" import="java.util.*,com.isilab.entity.*"
         pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!-- basic styles -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <!--[if IE 7]>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css"/>
    <!-- fonts -->
    <link rel="stylesheet" href="assets\css\cyrillic.css"/>
    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->
</head>

<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>
    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    实验室网站后台管理系统
                </small>
            </a>
            <!-- /.brand -->
        </div>
        <!-- /.navbar-header -->
    </div>
    <!-- /.navbar-header -->
</div>
<!-- /.container -->
</div>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>
    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>
        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {
                }
            </script>
            <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                    <button class="btn btn-danger" style="width: 100%">
                        <i class="icon-power-off"></i>
                    </button>
                </div>
                <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                    <span class="btn btn-success"></span>
                    <span class="btn btn-info"></span>
                    <span class="btn btn-warning"></span>
                    <span class="btn btn-danger"></span>
                </div>
            </div>
            <!-- #sidebar-shortcuts -->
            <ul class="nav nav-list">
                <li>
                    <a href="<%=path%>/admin.jsp">
                        <i class="icon-edit"></i>
                        <span class="menu-text"> 发布内容 </span>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="icon-list"></i>
                        <span class="menu-text"> 新闻 </span>
                    </a>
                </li>
                <li>
                    <a href="typography.html">
                        <i class="icon-tag"></i>
                        <span class="menu-text"> 学术研究 </span>
                    </a>
                </li>
                <li>
                    <a href="typography.html">
                        <i class="icon-desktop"></i>
                        <span class="menu-text"> 成果展示 </span>
                    </a>
                </li>
                <li>
                    <a href="typography.html">
                        <i class="icon-file"></i>
                        <span class="menu-text"> 学术文献 </span>
                    </a>
                </li>
            </ul>
            <!-- /.nav-list -->
            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>
        <div class="main-content">
            <div class="page-content">
                <div class="page-header">
                    <h1>新闻</h1>
                </div>
                <!-- 表格 -->
                <div class="row">
                    <div class="col-xs-12">
                        <form action="adminnews" id="newsPageForm">
                            <%
                                List<NewsEntity> list = (List<NewsEntity>) request.getAttribute("newslist");
                                int currentPage = (Integer) request.getAttribute("page");//当前页
                                int pageTotal = (Integer) request.getAttribute("pageTotal");//页码数
                            %>
                            <table id="sample-table" class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>新闻标题</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tbody>
                                <%for (NewsEntity n : list) {%>
                                <tr>
                                    <td>
                                        <a href="<%=path%>/news/<%=n.getId()%>"><%=n.getTitle()%>
                                        </a>
                                    </td>
                                    <td>
                                        <div class="btn-group">
                                            <button id="delete" class="btn btn-xs btn-danger" onclick="deleteItem(<%=n.getId()%>)">
                                                <i class="icon-trash bigger-120"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                            </table>

                            <%--<!-- 翻页 -->--%>
                            <%--<input name="page" id="page" type="hidden" value="1"/>--%>
                            <%--<nav aria-label="Page navigation">--%>
                                <%--<ul class="pagination">--%>
                                    <%--<li--%>
                                            <%--<%if (currentPage == 1) { %>--%>
                                            <%--class="disabled"--%>
                                            <%--<%} %>>--%>
                                        <%--<a href="javascript:pageFunc(1)" aria-label="Previous">--%>
                                            <%--<span aria-hidden="true">&laquo;</span>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                    <%--<%--%>
                                        <%--for (int i = 0; i < pageTotal; i++) {--%>
                                    <%--%>--%>
                                    <%--<li<%if (currentPage == i + 1) { %>--%>
                                            <%--class="active"--%>
                                            <%--<%} %>><a href="javascript:pageFunc(<%=i+1%>)"><%=i + 1 %>--%>
                                    <%--</a></li>--%>
                                    <%--<%--%>
                                        <%--}--%>
                                    <%--%>--%>
                                    <%--<li<%if (currentPage == pageTotal) { %>--%>
                                            <%--class="disabled"--%>
                                            <%--<%} %>>--%>
                                        <%--<a href="javascript:pageFunc(<%=pageTotal%>)" aria-label="Next">--%>
                                            <%--<span aria-hidden="true">&raquo;</span>--%>
                                        <%--</a>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</nav>--%>
                            <%--<!-- 翻页结束 -->--%>
                        </form>
                    </div><!-- /span -->
                </div>

            </div>
            <!-- /.page-content -->
        </div>
        <!-- /.main-content -->
    </div>
    <!-- /.main-container-inner -->
</div>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js "></script>
<script src="js/adnewslist.js "></script>
<script src="js/bootstrap.js"></script>
</body>

</html>