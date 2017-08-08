<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="sidebar" id="sidebar">
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'fixed')
        } catch (e) {
        }
    </script>
    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <form action="logout">
                <button class="btn btn-danger" style="width: 100%">
                    <i class="icon-power-off"></i>
                </button>
            </form>
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
        <%int temp = (Integer)request.getAttribute("sliderBarNum"); %>
        <li class="<%if(temp == 1){%>active<%}%>">
            <a href="<%=path%>/admin">
                <i class="icon-edit"></i>
                <span class="menu-text"> 发布内容 </span>
            </a>
        </li>
        <li class="<%if(temp == 2){%>active<%}%>">
            <a href="<%=path%>/adnews">
                <i class="icon-list"></i>
                <span class="menu-text"> 新闻 </span>
            </a>
        </li>
        <li class="<%if(temp == 3){%>active<%}%>">
            <a href="<%=path%>/adaca">
                <i class="icon-tag"></i>
                <span class="menu-text"> 学术研究 </span>
            </a>
        </li>
        <li class="<%if(temp == 4){%>active<%}%>">
            <a href="<%=path%>/adres">
                <i class="icon-desktop"></i>
                <span class="menu-text"> 成果展示 </span>
            </a>
        </li>
        <li class="<%if(temp == 5){%>active<%}%>">
            <a href="<%=path%>/addoc">
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

