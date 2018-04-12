<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>首页</title>
<!-- 
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
 crossorigin="anonymous">
-->
 <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 

 
</head>
<body style="background-color:#FFFFE0">
    <nav class="navbar  bg-info navbar-fixed-top">
        <div class="container">
          
            <p class="navbar-text navbar-right">Home&nbsp;&nbsp;&nbsp;关于我</p>
            <ul id="loading" class="nav navbar-text navbar-right" style="display: none; color: #b8ef2d;">
                <li>（正在加载，请稍等...）</li>
            </ul>
        </div>
    </nav>	
    
    <nav class="navbar bg-info">
        <img src="imgs/wenyi1.jpg"  height="230" width="100%"/>
        <div class="container">
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <ul class="nav nav-tabs">
                        <li role="presentation"><a>首页</a></li>
                        <li role="presentation"><a>电影</a></li>
                        <li role="presentation"><a>音乐</a></li>
                       	<li role="presentation"><a>小说</a></li>
                    </ul>
                </div>
                <div class="dropdown col-md-2">
                    <button class="btn bg-info text-muted dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        	管理
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" style="background-color:#d3f779" aria-labelledby="dropdownMenu1">
                        <li><a>试用</a></li>
						<li><a>试用</a></li>	                       
                        <li role="separator" class="divider"></li>
                        <li><a href="#">仅为Owner提供...</a></li>
                    </ul>
                </div>               	
            </div>
        </div>
    </nav>	
	
	<div class="container">
		<div class="row">
			<div class="col-md-7 col-md-offset-1">
				<div class="row">
                <div class="col-md-7 ">
                    <!-轮播组件-->
	                    <div id="carousel-example-generic" style="height:256px;width:450px" class="carousel slide" data-ride="carousel">
	                        <!-- Indicators -->
	                        <ol class="carousel-indicators">
	                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	                        </ol>
	                        <!-- Wrapper for slides -->
	                        <div class="carousel-inner" style="height:256px;width:450px" role="listbox">
	                            <div class="item active">
	                                <img src="imgs/weimei2.jpg" height="256" width:450px" />
	                                <div class="carousel-caption">
	                                    first
	                                </div>
	                            </div>
	                            <div class="item">
	                                <img src="imgs/weimei3.jpg" height="256" width:450px />
	                                <div class="carousel-caption">
	                                    second
	                                </div>
	                            </div>
	                            <div class="item">
	                                <img src="imgs/weimei4.jpg" height="256" width:450px />
	                                <div class="carousel-caption">
	                                    last
	                                </div>
	                            </div>
	                          
	
	                        </div>
	                        <!-- Controls -->
	                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	                            <span class="sr-only">Previous</span>
	                        </a>
	                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	                            <span class="sr-only">Next</span>
	                        </a>
	                    </div>
	                </div>					
				</div>
			</div>
			<div class="col-md-4">
				右边导航栏显示内容
			</div>
		</div>
	</div>

	

 
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- 
<script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
-->
</body>
</html>