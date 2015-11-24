<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="//unslider.com/unslider.js"></script>
<script>
$(function() {
    $('.banner').unslider();   
});
$(document).ready(function(){
	
	  $("#hidebtn").click(function(){
	  $("#footer").toggle();

	  });
	  
	  $("#showbtn").click(function(){
		  $("#footer").toggle();		
  
	  });
	});
</script>
<script>

</script>
<title>Magicの客服系统主页</title>
</head>

<body>




<div class="" style="width:100%" >
<nav class="navbar navbar-default" style="background:#555555">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Fucking Demo</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="color:#fff">喵の客服系统</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active" ><a href="#" >喵の客服主页<span class="sr-only">Now choose</span></a></li>
        <li><a href="#" style="color:#fff">喵の客服人员</a></li>
        <li><a href="#" style="color:#fff">喵の正确食用方法</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="./login.jsp" style="color:#fff">喵の登陆</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
<div >

<div class="banner" style="margin-top:-30px; overflow: auto;position: relative; ">
    <ul style="list-style: none; ">
        <li style="float:left">
        <div style="height:400px;margin-left:-35px;width:100%;background-image:url(./miao_2.jpg)">
            <div class="">
              <h3 style="color:#F8F8F7" class="text-center"><span style="color:red;font-size:30px">喵の</span>  客服   懂你的心灵捕手~</h3>
            </div>
        </div>
        </li>
        
        <li style="float:left">
        <div style="height:400px;margin-left:-18px;width:100%;background-image:url(./miao_3.jpg)">
            <div class="" style="margin-left:-50%">
              <h3 style="color:#F8F8F7" class="text-center"><span style="color:red;font-size:30px">喵の</span>  客服   懂你的心灵捕手~</h3>
              
            </div>
        </div>
        </li>
        
        <li style="float:left">
        
                <div style="height:400px;margin-left:-18px;width:100%;margin-top:10px;background-image:url(./miao_4.jpg)">
            <div class="" style="margin-left:-50%">
          
              
            </div>
        </div>
        </li>
    </ul>
</div>



</div>
<!--底部咨询按钮  -->
<div id="hidefoot">
<a href="#" id="hidebtn" style="bottom:10px;right:5px;position:fixed">
<img src="./Buttom_miao.jpg" alt="喵嗷~~~~~" class="img-thumbnail">
</a>
</div>
<!-- 唤出对话框 -->
<div id="footer" style="display:none">
<a id="showbtn" href="#" style="bottom:10px;right:325px;position:fixed ">
<img src="./Buttom_miao.jpg" alt="喵嗷~~~~~" class="img-thumbnail">
</a>
<div style="background:#42B2CA;bottom:10px;position:fixed;right:5px;width:325px;height:300px">

</div>
</div>

</body>
</html>