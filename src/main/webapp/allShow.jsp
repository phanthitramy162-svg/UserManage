<%@ page language="java" import="java.util.*,dbutil.*,entity.*,model.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>显示所有用户</title>
    <style>
        body { font-family: 'Segoe UI', "Microsoft YaHei", sans-serif; background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%); min-height: 100vh; display: flex; flex-direction: column; align-items: center; margin: 0; padding-top: 50px; }
        .table-card { background: white; padding: 30px 40px; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); width: 90%; max-width: 800px; margin-bottom: 30px; }
        .table-card h2 { color: #2c3e50; text-align: center; margin-top: 0; margin-bottom: 25px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 15px; text-align: center; border-bottom: 1px solid #eee; }
        th { background-color: #8e44ad; color: white; font-weight: bold; text-transform: uppercase; letter-spacing: 1px; }
        tr:hover { background-color: #f9f9f9; }
        .back-link { display: inline-block; margin-top: 20px; padding: 10px 25px; background: #34495e; color: white; border-radius: 6px; text-decoration: none; transition: 0.3s; }
        .back-link:hover { background: #2c3e50; box-shadow: 0 4px 10px rgba(0,0,0,0.2); }
    </style>
</head>
<body>
    <div class="table-card">
        <h2>📋 数据库中所有用户</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>用户名</th>
                <th>密码</th>
            </tr>
            <%
                Model model=new Model();
                ArrayList<User> arraylist=model.userSelect();
                for(int i=0;i<arraylist.size();i++){
            %>
                <tr>
                    <td><%=arraylist.get(i).getId()%></td>
                    <td><%=arraylist.get(i).getName() %></td>
                    <td><%=arraylist.get(i).getPassword() %></td>
                </tr>
            <% 	
                }
            %>
        </table>
    </div>
    <a href="index.jsp" class="back-link">🏠 返回主界面</a>
</body>
</html>