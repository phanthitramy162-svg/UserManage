<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>显示所有用户</title>
  </head>
  <body>
    <h2>数据库中所有用户</h2>
    <%
     Model model=new Model();
 	 ArrayList<User> arraylist=model.userSelect();
			%>
			<table border="1">
			  <tr><th>ID</th><th>用户名</th><th>密码</th></tr>
			<%for(int i=0;i<arraylist.size();i++){%>
				<tr>
				<td><%=arraylist.get(i).getId()%></td>
				<td><%=arraylist.get(i).getName() %></td>
				<td><%=arraylist.get(i).getPassword() %></td>
				</tr>
		<% 	
		}
     %>
     </table>
     <br/><a href="index.jsp">返回主页</a>
  </body>
</html>
