<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>显示数据页面</title>
  </head>
  <body>
    <%
    request.setCharacterEncoding("utf-8");
    int id=Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("name");
    String password=request.getParameter("password");
     Model model=new Model();
	%>
	<p>修改完成，影响行数：<%=model.update(id,name,password) %></p>
	<a href="allShow.jsp">显示所有用户</a>&nbsp;&nbsp;
	<a href="index.jsp">返回主页</a>
  </body>
</html>