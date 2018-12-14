<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>    
    <title>查询页面</title>
  </head> 
  <body>
  <center>
    <label for="username">用户名：</label><input type="text" id="username" placeholder="可以根据用户名查询"/>
  	<label for="gender">性别：</label><input type="text" id="gender" placeholder="可以根据性别查询"/>
  	<label for="age">年龄：</label><input type="text" id="age" placeholder="可以根据年龄查询"/>
  	<button type="button">查询</button><br/><br/><br/>
  	<table border="1">
  		<tr><th>用户名</th><th>性别</th><th>年龄</th><th>操作</th></tr>
  		<tbody id="tbody">
  		
  		</tbody>
  	</table>
  </center>
  <script type="text/javascript">
  	$("button").click(function(){
  		var username = $("#username").val();
  		var gender = $("#gender").val();
  		var age = $("#age").val();
  		if(username != null || gender != null || age != null || username != ""
  				|| gender != "" || age != ""){
  			$.ajax({
  				"url":"<%=basePath%>UserController/query",
  				"type":"post",
  				"data":{
  					"username":username,
  					"gender":gender,
  					"age":age
  				},
  				"dataType":"json",
  				"success":function(result){
  					if(result != null){
  						var str = "";
  						for(var i = 0 ; i < result.length ; i++){
  							str += "<tr><td>" + result[i].username + "</td><td>" + result[i].gender + "</td><td>" + result[i].age + "</td></tr>"
  						}
				
  						$("#tbody").html(str);
  					}
  				}
  			});
  		}
  	});
  </script>
  </body>
</html>
