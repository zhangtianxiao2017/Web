<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-danger">
    <div>
    <form enctype="multipart/form-data">
	    <div class="input-group">
	  		<span  class="input-group-addon" >电影名称：</span>
	  		<input name="moviename" type="text" class="form-control" id="moviename" placeholder="电影名称" aria-describedby="basic-addon1">
		</div>
	    <div class="input-group" style="margin-top: 20px;">
	  		<span class="input-group-addon" >电影海报：</span>
	  		<img alt="预览" src="imgs/nonepic.png" id="preview" height="88px" width="88px">
	  		<input  onchange="imgPreview(this)" name="moviepicture" type="file" id="moviepicture" placeholder="电影海报">
		</div>
		<div class="input-group" style="margin-top: 20px;">
	  		<span name="moviecomment" class="input-group-addon" id="basic-addon1">电影评价：</span>
	  		
	  		<textarea id="moviecontent"  rows="6" cols="20" class="form-control" placeholder="电影评价" aria-describedby="basic-addon1">
	  		</textarea>
		</div>
	</form>
		 <div  style="margin-top: 20px;">
	  		<button onclick="uploadMovie()">保存</button>
		</div>
	
    </div>
	
</body>
</html>