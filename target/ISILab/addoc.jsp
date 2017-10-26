<%@ page language="java" import="java.util.*,com.isilab.entity.*"
         pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css"/>
    <!-- ace styles -->
    <link rel="stylesheet" href="assets/css/ace.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->
    <script src="assets/js/ace-extra.min.js"></script>
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
        </div>
    </div>
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
        <%@ include file="WEB-INF/sliderbar.jsp" %>
        <div class="main-content">
            <div class="page-content">
                <div class="page-header">
                    <h1>学术研究</h1>
                </div>
                <!-- 表格 -->
                <div class="row">
                    <div class="col-xs-12">
                        <form action="addoc" id="docPageForm">
                            <%
                                List<DocumentEntity> list = (List<DocumentEntity>) request.getAttribute("doclist");
                                int currentPage = (Integer) request.getAttribute("page");//当前页
                                int pageTotal = (Integer) request.getAttribute("pageTotal");//页码数
                            %>
                            <table id="sample-table" class="table table-striped table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>标题</th>
                                    <th>发布日期</th>
                                    <th>操作</th>
                                </tr>
                                </thead>

                                <tbody>
                                <%for (DocumentEntity n : list) {%>
                                <tr>
                                    <td>
                                        <a href="<%=path%>/document/<%=n.getId()%>"><%=n.getTitle()%>
                                        </a>
                                    </td>
                                    <td><%=n.getDate()%></td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-xs btn-danger"
                                                    onclick="deleteItem(<%=n.getId()%>)">
                                                <i class="icon-trash bigger-120"></i>
                                            </button>
                                            <button type="button" class="btn btn-xs btn-primary"
                                                    onclick="updateModelShow(<%=n.getId()%>)">
                                                <i class="icon-pencil bigger-120"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                            </table>

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
                    </div><!-- /span -->
                </div>

            </div>
            <!-- /.page-content -->
        </div>
        <!-- /.main-content -->
    </div>
    <!-- /.main-container-inner -->
</div>
<%@ include file="WEB-INF/dialog-doc.jsp"%>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js "></script>
<script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js "><\/script>')
</script>
<script src="js/bootstrap.js"></script>
<script src="js/addoc.js "></script>
<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

</body>

</html>