<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录成功</title>
<link rel="stylesheet" href="<%=request.getServletContext().getContextPath() %>/css/login.css">
</head>
<body>
	<div class="login">
		<div class="header">
			<h1>登录成功</h1>
		</div>
		<div class="content">
			<table align="center">
				<tr>
					<td align="center">欢迎${requestScope.username}，登录成功！</td>
				</tr>
				<tr>
					<td align="center"><a href="<%=request.getServletContext().getContextPath() %>/query.jsp">点我呀~~~~</a></td>
				</tr>
			</table>

		</div>
	</div>	
</body>
</html>