<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="xiao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = (String)session.getAttribute("username");
		if(username == null)
		{
	%>
	<div align="center">
		<h3>您还未登录</h3>
	</div>
		
	<%
		}
		else
		{
			dbhelper dbhelp  = new dbhelper();
			user user = dbhelp.getUserInfo(username);
	   		dbhelp.recoverySource();
	   		
	   		String imgurl = "../imgs/" + user.getImg()+".jpg";
	   		String imgurltest = "<img  width='100' height='100' alt='erro1r' src='../imgs/"
	   				+user.getImg()+".jpg'/>";
	%>
	<div align="center">
		<table border="1">
			<tr>
				<td colspan="2"><%=user.getUsername()%>已登录成功</td>
			</tr>
			<tr>
				<td>头像：</td>
				<td><%=imgurltest %></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><%=user.getGender() %></td>
			</tr>
			<tr>
				<td>联系电话：</td>
				<td><%=user.getPhonenumber() %></td>
			</tr>
			<tr>
				<td>电子邮件：</td>
				<td><%=user.getEmail() %></td>
			</tr>
		</table>
	</div>
	<%
		}
	
		
	%>
</body>
</html>