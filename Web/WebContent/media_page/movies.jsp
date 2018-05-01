<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="db.*" import="org.hibernate.* " import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
				<%
					Movie m = new Movie();
					Session session1 = HibernateTools.getSession();
					String hql = "from Movie";
					
					Transaction tr = session1.beginTransaction();
					
					Query query = session1.createQuery(hql);
					
					List<Movie> movieList = query.list();
					//String real = ServletActionContext.getServletContext().getRealPath("/upload");
					for(Movie m1 : movieList)
					{
						System.out.println(m1.getMovieName());
						m1.getPicName();
					}
					
				%>
				<div>
					<%
					for(Movie m1 : movieList)
					{
						System.out.println(m1.getMovieName());
						%>
						<div class="row" style="margin-top: 20px">
							<div class="col-md-4">
								<img alt="电影图片" style="height: 200px;width: 150px" src=<%=m1.getCoverurl() %>>
							</div>
							<div class="col-md-8">
								<h4><%=m1.getTitle() %>(<span><img alt="豆瓣" height="30px" width="30px" src="imgs/douban.png">评分：<%=m1.getRate() %></span>)</h4>
								<p><%=m1.getComment() %></p>
							</div>
						</div>
						<%
					}
					%>					
				</div>
		
</body>
</html>