<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = (String)session.getAttribute("username");
		if(username != null)
		{
			session.setAttribute("username", null);
	%>
	<div align="center">
		<h3><%=username %>已经成功退出</h3>
	</div>
	<%
		}
		else
		{
	%>
	<div align="center">
		<h3>您还未成功登录！！！</h3>
	</div>
	<%		
		}
	%>
</body>
</html>