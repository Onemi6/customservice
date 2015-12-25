<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,cn.jsy.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="../js/Chart/Chart.js"></script>
<style>
  .line{
     background:#fff;
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
        <li class="active" ><a href="#" >喵の客服</a></li>
        <li><a href="../adminlogin.jsp" style="color:#19ADEC"><%=session.getAttribute("worker") %></a></li>
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
				 			<a href="./dashboard_travel.jsp" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-signal"></span>&nbsp;仪表盘
				 			</a>
				 		</li>
				 		<li>
				 			<a href="#" style="color:#19ADEC">
				 			  <span class="glyphicon glyphicon-comment"></span>&nbsp;聊天界面
				 			</a>
				 		</li>

				</ul>
		</div>
 	</nav>
  </div>

		 	 	<ol class="breadcrumb" style="width:280px">
		 	 	 	<li><a href="./dashboard_travel.jsp">首页</a></li>	
		 	 	 	<li class="active">Now Chat</li>		 	 	 	
		 	 	</ol>
		 	 	
		 	 	
<div id="page-content-wrapper" style="overflow:hidden;width:1100px;margin-top:-20px">
	<div class="row">
	<!-- 中间的数据分析 -->
		<div class="col-sm-8 col-md-9" style="paddig-bottom:10px;margin-top:20px">

		<br/>
		<br/>
		<div class="panel panel-default" >
		<div class="panel-heading">
		<h4 style="color:#19ADEC">待回答：</h4>
		</div>
		<br/>
		<div class="panel-body">
		

		   <!-- 循环查表     找出所有未答复对话 -->
		<div class="line " id="con">
		<%  
		//JSP CODE  START HERE.....
		ArrayList<String> waitingUser=user.getWaiter_zone("travel");

		for(int i=0;i<waitingUser.size();i++){
	
			out.print("	<p style='margin-bottom:26px'><span class='glyphicon glyphicon-user' style='color:#BBB7B7'></span> &nbsp;&nbsp;"+waitingUser.get(i)+"<span class='badge' style='margin-left:60%;color:red;background:#fff;display:none'>new</span></p>");
			out.print("<button class='btn btn-default' style='margin-left:85%;margin-top:-48px' id='callonchat' rel="+waitingUser.get(i)+"><span class='glyphicon glyphicon-earphone'></span></button>");
			out.print("<button class='btn btn-default' style='margin-left:95%;margin-top:-48px' id='ignorechat' rel="+waitingUser.get(i)+"><span class='glyphicon glyphicon-remove'></span></button>");

		}
		%>


		  
		
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

		   
		<div class="line " id="con2">
				   <% 
		   ArrayList<String> passer=user.getPasser_zone("travel");
		   for(int j=0;j<passer.size();j++){
			   out.print("  <p style='margin-bottom:26px'><span class='glyphicon glyphicon-user'></span>&nbsp;&nbsp;"+passer.get(j)+"<span class='badge' style='margin-left:60%;color:red;background:#fff;display:none'>new</span>");
			   out.print("		  </p>");
			   out.print("<button class='btn btn-default' style='margin-left:95%;margin-top:-50px' id='removechat' rel="+passer.get(j)+"><span class='glyphicon glyphicon-remove'></span></button>");
		   }
		   %>
		   
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
  				  <ul class="panel-ul">
  				  <% 
                  List<String> con=(List<String>)Conversion.getcontext_zone("travel"); 	
  				 List<String> usr=(List<String>)Conversion.getusrname_zone("travel"); 	
  				 List<Integer> conid=(List<Integer>)Conversion.getconid_zone("travel"); 	
  				 // out.print(con.toString());

  				  if(con==null||con.size()<1){  					  
  					out.print("<li>"+"没有数据"+"</li>") ;
  				  }else{
  					  for(int i=0;i<con.size();i++){
  						  //modal.js动态传参
  						out.print("<li><a href='javascript:void(0);' class='Mo_link' rel1="+(String)usr.get(i)+" rel2="+(String)con.get(i)+" rel3="+(Integer)conid.get(i)+">"+(String)usr.get(i)+"说："+(String)con.get(i)+"</a></li>");
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
<div class="modal fade" id="chatwindow" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" rel="">

  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <% 
    out.print("<h4>泥好呦!管理喵~~"+"</h4>");
 %>
      </div>
      <div class="modal-body">
        <div class="row">
        	<div class="col-xs-7">
        		<h5><b>开启你和用户的心灵对话吧喵~</b></h5>
        	</div>
        </div>
        <div id="msgbox" style="font-size:18px">
          <div id="msgblock" style="background:#FFF;height:180px;border:1px solid #CCCCCC;overflow-y:auto;resize:vertical">
          	<div id="msg-response" style="margin-top:20px;margin-right:30px;padding-top:7px;background:#fff">
          	<div style="color:#99BE7B;font-style:italic;margin-right:5px;padding:2px;margin-top:-25px;font-size:12px;font-weight:bold">
          	 	<span title="miao"   class="miao">
          	 	<span class="username"></span>
          	 	</span>
          	</div>
          	<span class="context">
          	    </span>
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

<!-- Modal -->
<div class="modal fade" id="adminChat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" rel="">

  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <% 
    out.print("<h4>泥好呦!管理喵~~"+"</h4>");
 %>
      </div>
      <div class="modal-body">
        <div class="row">
        	<div class="col-xs-7">
        		<h5><b>开启你和用户的心灵对话吧喵~</b></h5>
        	</div>
        </div>
        <div id="msgbox" style="font-size:18px">
          <div id="msgblock" style="background:#FFF;height:180px;border:1px solid #CCCCCC;overflow-y:auto;resize:vertical">
          	<div id="msg-responseA" style="margin-top:20px;margin-right:30px;padding-top:7px;background:#fff">
          	<div style="color:#99BE7B;font-style:italic;margin-right:5px;padding:2px;margin-top:-25px;font-size:12px;font-weight:bold">
          	 	<span title="miao"   class="miaoA">
          	 	<span class="usernameA"></span>
          	 	</span>
          	</div>
          	<span class="contextA">
          	    </span>
          	</div>
          </div>
        </div>
        <!-- 输入框 -->
        <div id="textinputA" style="position:relative;margin-top:25px;resize:vertical">
           <textarea id="msginputA" style="border:1px solid #CCCCCC;outline:none;width:100%" row="4" name="msginput" placeholder="有什么问题要问喵 就写这里(爪子" hkid="msginput"></textarea>
        </div>
      </div>
      <div class="modal-footer">
              <button type="button" class="btn btn-default" id="adminSent">喵!</button>
      </div>
    </div>
  </div>
</div>



<script>


   $("#adminSent").click(function(){
		var inp=$("#msginputA").val();
        var username=$("#callonchat").attr('rel');
		
		var date=new Date();
		var nowtime=date.toLocaleDateString();
		
	    $("#msg-responseA").append("<div id='mychat' style='with:100%;background:#fff;color:#36D9D6;font-style:italic;margin-left:2px;padding:2px;font-size:12px;font-weight:bold'><span title='custom'><i style='margin-top:-5px'>你:</i></span></div>")
	    $("#msg-response").append("<p style=''></p>")
		$("#msg-responseA").append("<div id='chatde'>"+inp+"</div>");

		$("#msginputA").val("");
		
        $.post("../src/Update_con.jsp",{workername:"admin",isstart:0,username:username});
        $.post("../Add_comment.jsp",{workername:"admin",isstart:0,context:inp,nowtime:nowtime});	
   });
      
   
   
   //右侧挂件的JS code Strat here..... 
   //获得msginput输入      post给到数据库   update数据表
   //Modal Button Click Function
   $("#miao_b").click(function(){
	    
		var inp=$("#msginput").val();
		//获得chatwindow中的ID号
		var conid=$("#chatwindow").attr('rel');
		
		var date=new Date();
		var nowtime=date.toLocaleDateString();
		
	    $("#msg-response").append("<div id='mychat' style='with:100%;background:#fff;color:#36D9D6;font-style:italic;margin-left:2px;padding:2px;font-size:12px;font-weight:bold'><span title='custom'><i style='margin-top:-5px'>你:</i></span></div>")
	 //   $("#msg-response").append("<p style=''></p>")
	    $("#msg-response").append("<div id='chatde'>"+inp+"</div>");

	    $("#msginput").val("");
		
		//ajax starting.....
        $.post("../src/Update_con.jsp",{conid:conid,workername:"admin",isstart:0});
        $.post("../Add_comment.jsp",{conid:conid,workername:"admin",isstart:0,context:inp,nowtime:nowtime});				
	});
   

   
   
   //AJAX 轮询操作
   
    setInterval(function(){
    	requestdata();

    },3000);

   //向服务器请求最新的三列信息
   function requestdata(){
	   $.post("../src/conversion.jsp",{zone:"travel"},function(data){
		//alert(data);
			 //先清空.panel-ul里的所有Elem
			 $(".panel-ul").empty();
			// var obj=jQuery.parseJson(data);
			 
		   $.each(data,function(k,v){

			//console.log(v);
			   //remark:这里的value是ArrayList类型
		    	   //在全部装上
		       $(".panel-ul").append("<li><a href='#' class='Mo_link' rel1="+v[2]+" rel2="+v[1]+" rel3="+v[0]+">"+v[2]+"说："+v[1]+"</a></li>");		 
			  // $("#chatwindow").modal();
			  
		//Alert Problem:The tag was added after the page loads ,Therefore,The link would be fired after the page first load. 
	     //And we do following methods to SOLVE this problem
			   $(".Mo_link").click(function(){
				   var conname=$(this).attr('rel1');
				   var context=$(this).attr('rel2');
				   var conid=$(this).attr('rel3');
				//   alert(context);
				   $("#mychat").empty();
				   $("#chatde").empty();
				   $("#chatwindow").attr("rel",conid);
				   $(".username").html(conname);
				   $(".context").html(context);
				   $("#chatwindow").modal();
			   });  	     				
		   });
	   },"json");
   }
    setInterval(function(){
  	    getResponse();	
    },1000);
 //获取Client 
   function getResponse(){
       var username=$("#callonchat").attr('rel');
   	
   	$.post("./src/chatControl.jsp",{username:username,method:"getClientdata"},function(data){
   		//for each thr arraylist
   		//alert(data);
   		//Travelsal the JSON data
            $.each(JSON.parse(data),function(k,v){
           	 if(k=="con"){
           		   $("#msg-responseA").append("<div style='width:100%;background:#fff;color:#99BE7B;font-style:italic;margin-left:2px;padding:2px;font-size:12px;font-weight:bold'><span title='admin'><i style='margin-top:-5px'>"+username+"</i></span></div>");
           		    $("#msg-responseA").append(v[0]);
           	 }
           	 else if(k=="conid"){
           		 var conid=v[0];
           	 }
            });

   	});
   } 
   
   
   
   
 //Modal.js 带参构造

   $(".Mo_link").click(function(){
	   
	   var conname=$(this).attr('rel1');
	   var context=$(this).attr('rel2');
	   var conid=$(this).attr('rel3');
	//   alert(context);
	   $("#mychat").empty();
	   $("#chatde").empty();
	   $("#chatwindow").attr("rel",conid);
	   $(".username").html(conname);
	   $(".context").html(context);
	   $("#chatwindow").modal();
   }); 
 
 //Call on modal
  
  	$("#callonchat").click(function(){
  		
        var username=$(this).attr('rel');
  		
  		$.post("../src/chatControl.jsp",{username:username,method:"history"},function(data){
				$("#msg-responseA").empty();
  			$.each(JSON.parse(data),function(k,v){
  			    $("#msg-responseA").append("<div id='mychat' style='with:100%;background:#fff;color:#99BE7B;font-style:italic;margin-left:2px;padding:2px;font-size:12px;font-weight:bold'><span title='custom'><i style='margin-top:-5px'>"+username+":</i></span></div>")
  			    $("#msg-responseA").append("<div id='chatde'>"+v+"</div>");
	            $("#msginputA").val("");
  			});
  		});  		  		
	   $("#adminChat").modal();
	 //  location.reload();
  	});
 
   //移去已结束用户
   $("#removechat").click(function(){
	   var username=$(this).attr('rel');
	   $.post("../src/chatControl.jsp",{username:username,method:"update"});
	  location.reload();
   });
   //忽视正在进行的对话
   $("#ignorechat").click(function(){
	   var username=$(this).attr('rel');
	   $.post("../src/chatControl.jsp",{username:username,method:"ignore"});
	   location.reload();
   });
</script>
</body>
</html>