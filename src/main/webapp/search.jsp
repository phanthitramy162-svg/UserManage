<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询用户</title>
  </head>
  <body>
    <h2>根据id查询用户</h2>
    <form action="showUser.jsp" method="post">
      请输入id：<input type="text" name="id">
      <input type="submit" value="提交">
      &nbsp;&nbsp;<a href="index.jsp">返回主页</a>
    </form>
  </body>
</html>
