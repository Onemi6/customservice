<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="./js/Chart/Chart.js"></script>
<title>喵の窝</title>
</head>

<body>

<div class="" style="width:100%" >
<nav class="navbar navbar-default" style="background:#f8f8f8">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <a class="navbar-brand" href="#" style="color:#19ADEC">喵の客服系统</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li class="active" ><a href="#">喵の配置</a></li>
        <li ><a href="./admin.jsp"  style="color:#19ADEC">喵の客服</a></li>
        <li><a href="#" style="color:#19ADEC">喵</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

<div class="container-fluid" id="wrapper" style="width:220px;margin-top:-20px;display:block;padding-left:220px;position:relative">
	<div style="margin-left:-220px;display:block;float:left" id="wrapper-sidebar" >
 		<nav  class="navbar navbar-default" style="background:#f8f8f8;border-color:#e7e7e7">
		 <div id="navbar-default-sidebar-collapse" class="collapse navbar-collapse"  style="width:220px;position:relative;">
				<ul id="side-bar" class="nav nav-stack">
				 		<li>
				 			<a href="./admin.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-signal"></span>&nbsp;仪表盘
				 			</a>
				 		</li>
				 		<li>
				 			<a href="./chat.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-comment"></span>&nbsp;聊天界面
				 			</a>
				 		</li>
				 		<li>
				 			<a href="./config.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-cog"></span>&nbsp;常用设置
				 			</a>
				 		</li>
				</ul>
		</div>
 	</nav>
  </div>

		 	 	<ol class="breadcrumb" style="width:280px">
		 	 	 	<li><a href="./admin.jsp">首页</a></li>	
		 	 	 	<li class="active">常用设置</li>		 	 	 	
		 	 	</ol>
		 	 	
		 	 	
<div id="page-content-wrapper" style="overflow:hidden;width:1100px;margin-top:-20px">
	<div class="row">
	<!-- 中间的数据分析 -->
		<div class="col-sm-8 col-md-9" style="paddig-bottom:10px;margin-top:20px">

	    </div>
		<!-- 右方简略信息组 -->
		<div class="columns col-sm-4 col-md-3" style="margin-top:0px">
			<div class="panel panel-default">
 				 <div class="panel-heading">
   					 <h3 class="panel-title" style="color:#19ADEC"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp;Chating</h3>
 				 </div>
 			 <div class="panel-body">
  				  <ul>
  				    <li>喵</li>
  				    <li>喵</li>
  				  </ul>  				  
 			 </div>
     		</div>
		</div>
	</div>
</div>
</div>


</body>
</html>