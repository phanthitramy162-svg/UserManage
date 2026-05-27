<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户综合管理系统 (UIMS)</title>
    <style>
        /* CSS 重置与基础设置 */
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body {
            font-family: 'Segoe UI', "Microsoft YaHei", sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%); /* 渐变高级灰蓝背景 */
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        
        /* 顶部导航栏 */
        .header {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }
        .header h1 { font-size: 22px; font-weight: normal; letter-spacing: 2px; }
        .header .time-box { font-size: 15px; background: rgba(255,255,255,0.1); padding: 8px 15px; border-radius: 20px; }

        /* 主体内容区 */
        .main-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 60px 20px;
        }
        
        .welcome-text { text-align: center; margin-bottom: 50px; color: #34495e; }
        .welcome-text h2 { font-size: 32px; font-weight: 300; margin-bottom: 10px; }
        .welcome-text p { color: #7f8c8d; font-size: 16px; letter-spacing: 1px; }

        /* 卡片网格布局 */
        .nav-grid {
            display: grid;
            grid-template-columns: repeat(5, 1fr); /* 5个按钮排一排 */
            gap: 25px;
            width: 100%;
            max-width: 1100px;
        }

        /* 悬浮卡片样式 */
        .card {
            background: #ffffff;
            border-radius: 12px;
            padding: 35px 20px;
            text-align: center;
            text-decoration: none;
            color: #34495e;
            box-shadow: 0 8px 16px rgba(0,0,0,0.06);
            transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
            border-bottom: 4px solid transparent;
            position: relative;
            overflow: hidden;
        }
        
        /* 卡片悬浮动效 */
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.12);
        }
        
        .card .icon { font-size: 42px; margin-bottom: 15px; display: block; }
        .card-title { font-size: 18px; font-weight: bold; }

        /* 为不同功能赋予专属主题色 */
        .card.allshow:hover { border-bottom-color: #8e44ad; color: #8e44ad; }
        .card.insert:hover { border-bottom-color: #2ecc71; color: #2ecc71; }
        .card.search:hover { border-bottom-color: #3498db; color: #3498db; }
        .card.update:hover { border-bottom-color: #f1c40f; color: #f1c40f; }
        .card.delete:hover { border-bottom-color: #e74c3c; color: #e74c3c; }

        /* 底部版权信息 */
        .footer {
            text-align: center;
            padding: 20px;
            color: #7f8c8d;
            font-size: 13px;
            background-color: rgba(255, 255, 255, 0.6);
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>🛠️ 用户综合管理系统 (UIMS)</h1>
        <div class="time-box" id="clock">正在获取系统时间...</div>
    </div>

    <div class="main-content">
        <div class="welcome-text">
            <h2>欢迎回来，系统管理员</h2>
            <p>请选择您需要管理的业务模块</p>
        </div>

        <div class="nav-grid">
            <a href="allShow.jsp" class="card allshow">
                <span class="icon">📋</span>
                <span class="card-title">显示所有</span>
            </a>
            <a href="insert.jsp" class="card insert">
                <span class="icon">➕</span>
                <span class="card-title">添加用户</span>
            </a>
            <a href="search.jsp" class="card search">
                <span class="icon">🔍</span>
                <span class="card-title">查询用户</span>
            </a>
            <a href="update.jsp" class="card update">
                <span class="icon">✏️</span>
                <span class="card-title">修改用户</span>
            </a>
            <a href="dele.jsp" class="card delete">
                <span class="icon">🗑️</span>
                <span class="card-title">删除用户</span>
            </a>
        </div>
    </div>

    <div class="footer">
        &copy; 2026 软件工程实验五 | 数据驱动，智能管理
    </div>

    <script>
        function updateTime() {
            var now = new Date();
            var year = now.getFullYear();
            var month = (now.getMonth() + 1).toString().padStart(2, '0');
            var day = now.getDate().toString().padStart(2, '0');
            var hours = now.getHours().toString().padStart(2, '0');
            var minutes = now.getMinutes().toString().padStart(2, '0');
            var seconds = now.getSeconds().toString().padStart(2, '0');
            document.getElementById("clock").innerText = year + "年" + month + "月" + day + "日  " + hours + ":" + minutes + ":" + seconds;
        }
        setInterval(updateTime, 1000); // 每秒刷新一次
        updateTime(); // 立即执行一次，防止初始显示空白
    </script>
</body>
</html>