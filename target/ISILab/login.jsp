<%--
  Created by IntelliJ IDEA.
  User: Simrit
  Date: 2017/7/29
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <title>登录-华宁巡检后台</title>

    <meta name="description" content="User login page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="images/logo.png" rel="shortcut icon" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="font-awesome/4.2.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="fonts/fonts.googleapis.com.css" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/ace.min.css" />
    <link rel="stylesheet" href="css/ace-fonts.css" />
    <link rel="stylesheet" href="css/ace.css" />
    <link rel="stylesheet" href="css/ace-rtl.css" />
    <link rel="stylesheet" href="css/ace-rtl.min.css" />
    <link rel="stylesheet" href="css/index.css" />
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="css/ace-part2.min.css" />
    <![endif]-->
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="css/ace-ie.min.css" />
    <![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-layout light-login">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container" style="width:402px">
                    <div class="center">
                        <h1>
                            <img class="logoClass" alt="logo" src="image/logo.png">
                            <!-- <i class="ace-icon fa fa-leaf blue"></i> -->
                            <span class="red">实验室</span>
                            <span class="grey" id="id-text2">后台管理系统</span>
                        </h1>
                    </div>
                    <div class="space-6"></div>
                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger" align="center">
                                        <i class="ace-icon fa fa-coffee green"></i>
                                        请输入您的用户名及密码
                                    </h4>
                                    <div class="space-6"></div>
                                    <%
                                        String usn = null;
                                        String pwd = null;
                                        String isCookie = "0";
                                        Cookie [] cookies;
                                        try{
                                            cookies = request.getCookies();
                                            for(Cookie e : cookies){
                                                if(e.getName().equals("isCookieNFC")){
                                                    isCookie = e.getValue();
                                                }
                                                else if(e.getName().equals("nameCookieNFC")){
                                                    usn = e.getValue();
                                                }
                                                else if(e.getName().equals("pwdCookieNFC")){
                                                    pwd = e.getValue();
                                                }
                                            }
                                        }
                                        catch(Exception e){}

                                    %>
                                    <form name="logform" action="userLogin" method="post">
                                        <fieldset>
                                            <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                            <input type="text" name="usn" class="form-control" placeholder="用户名" autocomplete="off"
                                                                   value="<%=usn == null ? "" : usn %>"/>
                                                            <i class="ace-icon fa fa-user"></i>
                                                        </span>
                                            </label>
                                            <label class="block clearfix">
                                                    <span class="block input-icon input-icon-right">
                                                            <input type="password" name="pwd" class="form-control" placeholder="密码" autocomplete="off"
                                                                   value="<%=pwd == null ? "" : pwd %>"/>
                                                            <i class="ace-icon fa fa-lock"></i>
                                                        </span>
                                            </label>
                                            <div class="space"></div>
                                            <div class="clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" name="isCookie" class="ace" value="1"
                                                            <%if(isCookie.equals("1")) {%>
                                                           checked="checked"
                                                            <%} %>
                                                    />
                                                    <span class="lbl"> 记住我</span>
                                                </label>
                                                <button type="button" class="width-35 pull-right btn btn-sm btn-primary" onclick="logform.submit();">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">登录</span>
                                                </button>
                                            </div>
                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>
                                </div>
                                <div class="toolbar clearfix">
                                    <div>
                                        <a href="#" class="forgot-password-link">
                                        </a>
                                    </div>
                                    <div>
                                        <a href="#" class="user-signup-link">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- basic scripts -->

<!--[if !IE]>
<script src="js/jquery.2.1.1.min.js"></script>
<![endif]-->

<!--[if IE]>
<script src="js/jquery.1.11.1.min.js"></script>
<![endif]-->

<!--[if !IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='js/jquery.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

</body>
</html>


