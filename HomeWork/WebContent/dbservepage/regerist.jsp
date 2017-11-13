<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="xiao.*" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String username = request.getParameter("textUser");
		String password = request.getParameter("txtpwd");
		String gender = request.getParameter("gender");
		String phonenumber = request.getParameter("phonenumber");
		String email = request.getParameter("email");
		String img = request.getParameter("img");
		
		System.out.println(img);
		
		dbhelper db = new dbhelper();
		String urlinsert = "INSERT INTO user(username,password,gender,phonenumber,email,img) VALUES ('"+username+"','"+
		password+"','"+gender+"','"+phonenumber+"','"+email+"','"+img+"')";
		boolean result =  db.insert(urlinsert);
		db.recoverySource();
		
		if(result)
		response.sendRedirect("../user/login.html");
		else
		{
			
		}
	%>
	
	
	
	<%=username + password + gender %>
</body>
</html>