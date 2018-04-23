<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="db.*" import="org.hibernate.* " import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-striped">
		<thead>
			<tr>
				<td>电影 <img alt="添加电影" height="20px" width="20px" onclick="movieAdd()" src="imgs/addmedia.png"> </td>
				<td>评论</td>
				<td>操作</td>
			</tr>
		</thead>
		<tbody>
			<%
				Movie m = new Movie();
				Session session1 = HibernateTools.getSession();
				String hql = "from Movie";
				Transaction tr = session1.beginTransaction();
				Query query = session1.createQuery(hql);
				List<Movie> movieList = query.list();
			%>
			<%
				for(Movie m1 : movieList)
				{
					%>
				<tr>
					<td><%=m1.getMovieName() %></td>
					<td><%=m1.getComment() %></td>
					
					<td>
						<p class="hidden id_movie"><%=m1.getId() %></p>
						<img alt="修改" onclick="movie_modify(this)" height="20px" width="20px" src="imgs/review.png">
						<img alt="删除" onclick="movie_delete(this)" src="imgs/delete.png" height="20px" width="20px">
					</td>
				</tr>
					<%
				}
			%>
		</tbody>
	</table>
</body>
</html>