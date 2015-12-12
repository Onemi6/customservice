<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,cn.jsy.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="./js/Chart/Chart.js"></script>
<style>
  .line{
     background:#f8f8f8;
     font:18px;
     width:100%;
  }
</style>
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
        <li ><a href="./config.jsp" style="color:#19ADEC">喵の配置</a></li>
        <li class="active" ><a href="#" >喵の客服</a></li>
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
		 	 	 	<li class="active">Now Chat</li>		 	 	 	
		 	 	</ol>
		 	 	
		 	 	
<div id="page-content-wrapper" style="overflow:hidden;width:1100px;margin-top:-20px">
	<div class="row">
	<!-- 中间的数据分析 -->
		<div class="col-sm-8 col-md-9" style="paddig-bottom:10px;margin-top:20px">
		<div class="panel panel-default" >
		<div class="panel-heading">
		<h4 style="color:#19ADEC">当前会话：</h4>
		</div>
		<br/>
		<div class="panel-body">
		
		<!-- JSP code Strat From Here -->
		   <!-- 循环查表     找出所有未答复对话 -->
		<div class="line " id="con1">
		  <p><span class="glyphicon glyphicon-user" style="color:#19ADEC"></span>&nbsp;&nbsp;Customer name<span class="badge" style="margin-left:60%;color:red;background:#fff;display:none">new</span>
		  </p>
		  <button class="btn btn-default" style="margin-left:85%;margin-top:-28px" id="callonchat" ><span class="glyphicon glyphicon-earphone"></span></button>
		  <button class="btn btn-default" style="margin-left:95%;margin-top:-28px" id="removechat" ><span class="glyphicon glyphicon-remove"></span></button>

		</div>
		<!--  -->
		</div>
		</div>
		<br/>
		<br/>
		<div class="panel panel-default" >
		<div class="panel-heading">
		<h4 style="color:#19ADEC">待回答：</h4>
		</div>
		<br/>
		<div class="panel-body">
		
		<!-- JSP code Strat From Here -->
		   <!-- 循环查表     找出所有未答复对话 -->
		<div class="line " id="con1">
		  <p><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Customer name<span class="badge" style="margin-left:60%;color:red;background:#fff;display:none">new</span>
		  </p>
		  <button class="btn btn-default" style="margin-left:85%;margin-top:-28px" id="callonchat" ><span class="glyphicon glyphicon-earphone"></span></button>
		  <button class="btn btn-default" style="margin-left:95%;margin-top:-28px" id="removechat" ><span class="glyphicon glyphicon-remove"></span></button>

		</div>
		<!--  -->
		</div>
		</div>
		<br/>
		<br/>
		<div class="panel panel-default" >
		<div class="panel-heading">
		<h4 style="color:#19ADEC">已结束：</h4>
		</div>
		<br/>
		<div class="panel-body">
		
		<!-- JSP code Strat From Here -->
		   <!-- 循环查表     找出所有未答复对话 -->
		<div class="line " id="con1">
		  <p><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Customer name<span class="badge" style="margin-left:60%;color:red;background:#fff;display:none">new</span>
		  </p>

		  <button class="btn btn-default" style="margin-left:95%;margin-top:-28px" id="removechat" ><span class="glyphicon glyphicon-remove"></span></button>

		</div>
		<!--  -->
		</div>
		</div>
	    </div>
		<!-- 右方简略信息组 -->
		<div class="columns col-sm-4 col-md-3" style="margin-top:0px">
			<div class="panel panel-default">
 				 <div class="panel-heading">
   					 <h3 class="panel-title" style="color:#19ADEC"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp;Chating</h3>
 				 </div>
 			 <div class="panel-body">
  				  <ul>
  				  <% 
                  List<String> con=(List<String>)Conversion.getcontext(); 	
  				 List<String> usr=(List<String>)Conversion.getusrname(); 	
  				 // out.print(con.toString());

  				  if(con==null||con.size()<1){  					  
  					out.print("<li>"+"没有数据"+"</li>") ;
  				  }else{
  					  for(int i=0;i<con.size();i++){
  						out.print("<li><a href='#' data-toggle='modal' data-target='#chatwindow'>"+(String)usr.get(i)+"说："+(String)con.get(i)+"</a></li>");
  					  }					
					}  		

  				  %>
  				  </ul>  				  
 			 </div>
     		</div>
		</div>
	</div>
</div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <% 
    out.print("<h4>泥好呦!"+"<span style='display:block' id='userName'>"+request.getParameter("username")+"</span>"+"</h4>");
 %>

      </div>
      <div class="modal-body">
        <div class="row">
        	<div class="col-xs-7">
        		<h5><b>欢迎光临喵の客服 人工服务</b></h5>
        	</div>
        </div>
        <div id="msgbox" style="font-size:12px">
          <div id="msgblock" style="background:#FFF;height:120px;border:1px solid #CCCCCC;overflow-y:auto;resize:vertical">
          	<div id="msg-response" style="margin-top:20px;margin-right:30px;padding-top:7px;background:#BFE9F9">
          	<div style="color:#99BE7B;font-style:italic;margin-right:5px;padding:2px;margin-top:-25px;font-size:12px;font-weight:bold">
          	 	<span title="miao"   role="button">
          	 	<i class="glyphicon glyphicon-user">&nbsp;首席喵客服:</i>
          	 	</span>
          	</div>
          	    首席喵喵顾问为您服务 请输入你想要知道的事喵~~~
          	</div>
          </div>
        </div>
        <!-- 输入框 -->
        <div id="textinput" style="position:relative;margin-top:25px;resize:vertical">
           <textarea id="msginput" style="border:1px solid #CCCCCC;outline:none;width:100%" row="4" name="msginput" placeholder="有什么问题要问喵 就写这里(爪子" hkid="msginput"></textarea>
        </div>
      </div>
      <div class="modal-footer">
              <button type="button" class="btn btn-default" id="miao_b">喵!</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>