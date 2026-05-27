<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加用户</title>
  </head>
  <body>
    <h2>添加新用户</h2>
    <form action="insertShow.jsp" method="post">
      请输入id：    <input type="text" name="id"><br/>
      请输入用户名：<input type="text" name="name"><br/>
      请输入密码：  <input type="text" name="password"><br/>
      <input type="submit" value="提交">
      &nbsp;&nbsp;<a href="index.jsp">返回主页</a>
    </form>
  </body>
</html>
