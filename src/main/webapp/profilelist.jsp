<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="com.isilab.entity.NewsEntity" %>

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
    <p>
        <font size="5px" color="#673566">科研人员</font>
    </p>
    <hr style="height:2px;border:none;border-top:2px ridge #CCCCCC;margin-top:-10px"/>
    <div>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#teacher" aria-controls="teacher" role="tab" data-toggle="tab">实验室教师</a></li>
            <li role="presentation"><a href="#student" aria-controls="student" role="tab" data-toggle="tab">学生团队</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="teacher">
                <div class="row" style="margin: 20px 60px;padding: 30px;border: 1px solid #666">
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>教授</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>教授</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>副教授</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="student">
                <div class="row" style="margin: 20px 60px;padding: 30px;border: 1px solid #666">
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>硕士生</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>硕士生</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>硕士生</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>硕士生</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                    <div class="row" style="margin: 20px">
                        <div class="col-xs-5">
                            <div class="row">
                                <div class="col-xs-5">
                                    <img src="image\photo\p1.jpg" class="img-responsive"
                                         style="height: 120px;width: 90px;border: 1px solid #666;">
                                </div>
                                <div class="col-xs-7">
                                    <h4>张三</h4>
                                    <p>硕士生</p>
                                    <p>Email：aaaa@qq.com</p>
                                    <p>办公地址：211</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-5 col-xs-offset-2">
                            <h4>研究方向</h4>
                            <p>机器视觉，多功能机器人</p>
                        </div>
                    </div>
                </div>
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
<script src="js/newslist.js "></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js "></script>

<script>
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        e.target // newly activated tab
        e.relatedTarget // previous active tab
    })
</script>
</body>
</html>