<%--
  Created by IntelliJ IDEA.
  User: Simrit
  Date: 2017/7/26
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>

<form action="newsPublish" method="post">
    title:<br>
    <input type="text" name="title" >
    <br>
    content:<br>
    <input type="text" name="content" >
    <br><br>
    <input type="submit" value="Submit">
</form>

<p>如果您点击提交，表单数据会被发送到名为 demo_form.asp 的页面。</p>

</body>
</html>
