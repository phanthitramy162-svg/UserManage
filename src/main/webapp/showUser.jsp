<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询用户结果</title>
  </head>
  <body>
    <h2>查询结果</h2>
    <%
    int id=Integer.parseInt(request.getParameter("id"));
     Model model=new Model();
 	 User user=model.load(id);
	%>
	<table border="1">
	  <tr><th>ID</th><th>用户名</th><th>密码</th></tr>
	  <tr>
	    <td><%=user.getId() %></td>
	    <td><%=user.getName() %></td>
	    <td><%=user.getPassword() %></td>
	  </tr>
	</table>
	<br/><a href="index.jsp">返回主页</a>
  </body>
</html>
