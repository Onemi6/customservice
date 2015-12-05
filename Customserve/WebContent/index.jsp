<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//unslider.com/unslider.js"></script>
<script>
$(function() {
    $('.banner').unslider();   
});
/*想左弹出式窗口   由于需求变更 故改为模态框形式弹出
$(document).ready(function(){
	
	  $("#hidebtn").click(function(){
	  $("#footer").toggle();

	  });
	  
	  $("#showbtn").click(function(){
		  $("#footer").toggle();		
  
	  });
	});
*/
</script>
<script>

</script>
<title>Magicの客服系统</title>
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


      <ul class="nav navbar-nav navbar-right">
        <li class="active" ><a href="#" >喵の客服主页<span class="sr-only">Now choose</span></a></li>
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
        <div style="height:600px;margin-left:-35px;width:100%;background-image:url(./miao_re.png)">
            <div class="">
              <h3 style="color:#F8F8F7" class="text-center"><span style="color:red;font-size:30px">喵の</span>  客服   懂你的心灵捕手~</h3>
            </div>
        </div>
        </li>
        
        <li style="float:left">
        <div style="height:600px;margin-left:-18px;width:100%;background-image:url(./miao_3.jpg)">
            <div class="" style="margin-left:-50%">
              <h3 style="color:#F8F8F7" class="text-center"><span style="color:red;font-size:30px">喵の</span>  客服   懂你的心灵捕手~</h3>
              
            </div>
        </div>
        </li>
        
        <li style="float:left">
        
                <div style="height:600px;margin-left:-18px;width:100%;margin-top:10px;background-image:url(./miao_4.jpg)">
            <div class="" style="margin-left:-50%">
          
              
            </div>
        </div>
        </li>
    </ul>
</div>
</div>



<!--底部咨询按钮  -->
<div id="hidefoot">
<a href="#" class="btn" style="bottom:10px;right:5px;position:fixed" data-toggle="modal" data-target="#myModal">
<img src="./Buttom_miao.jpg" alt="喵嗷~~~~~" class="img-thumbnail">
</a>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">喵喵喵   请问有喵在吗？</h4>
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


<script>

$("#miao_b").click(function(){

	var inp=$("#msginput").val()
 
    $("#msg-response").append("<div style='background:#fff;color:#36D9D6;font-style:italic;margin-right:5px;padding:2px;font-size:12px;font-weight:bold'><span title='custom'><i class='glyphicon glyphicon-user'>你:</i></span></div>")
 //   $("#msg-response").append("<p style=''></p>")
    $("#msg-response").append(inp)


});
</script>


<!-- 唤出对话框 -->
<!--div id="footer" style="display:none">
<a id="showbtn" href="#" style="bottom:10px;right:325px;position:fixed ">
<img src="./Buttom_miao.jpg" alt="喵嗷~~~~~" class="img-thumbnail">
</a>
<div style="background:#42B2CA;bottom:10px;position:fixed;right:5px;width:325px;height:300px">
</div>
</div-->

</body>
</html>