<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查询用户</title>
    <style>
        body { font-family: 'Segoe UI', "Microsoft YaHei", sans-serif; background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%); min-height: 100vh; display: flex; justify-content: center; align-items: center; margin: 0; }
        .form-card { background: white; padding: 40px 50px; border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); width: 100%; max-width: 400px; }
        .form-card h2 { color: #2c3e50; margin-top: 0; margin-bottom: 30px; text-align: center; font-weight: 400; }
        .input-group { margin-bottom: 20px; }
        .input-group label { display: block; margin-bottom: 8px; color: #34495e; font-size: 15px; font-weight: bold; }
        .input-group input { width: 100%; padding: 12px 15px; border: 1px solid #ddd; border-radius: 6px; font-size: 15px; box-sizing: border-box; transition: all 0.3s; }
        .input-group input:focus { border-color: #3498db; outline: none; box-shadow: 0 0 8px rgba(52, 152, 219, 0.2); }
        .action-group { display: flex; justify-content: space-between; align-items: center; margin-top: 30px; }
        .submit-btn { background-color: #3498db; color: white; border: none; padding: 12px 30px; border-radius: 6px; font-size: 16px; cursor: pointer; transition: 0.3s; }
        .submit-btn:hover { background-color: #2980b9; }
        .back-link { color: #95a5a6; text-decoration: none; transition: 0.3s; }
        .back-link:hover { color: #34495e; text-decoration: underline; }
    </style>
</head>
<body>
    <div class="form-card">
        <h2>🔍 根据 ID 查询用户</h2>
        <form action="showUser.jsp" method="post">
            <div class="input-group">
                <label>请输入 ID：</label>
                <input type="text" name="id" required>
            </div>
            <div class="action-group">
                <button type="submit" class="submit-btn">立即搜索</button>
                <a href="index.jsp" class="back-link">返回主页</a>
            </div>
        </form>
    </div>
</body>
</html>