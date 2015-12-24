<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="cn.jsy.*"%>
    <%@page import="java.util.*,java.io.*,com.google.gson.*"%>
    <%
        if(session.getAttribute("workername").equals("admin")){
        	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet"/>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="./js/Chart/Chart.js"></script>
<script src="./js/Jquerysession/jquery.session.js"></script>
       <style>
            .line-legend {
              list-style: none;
              padding: 0px;
            }
            .line-legend li {
              display: block;
              padding-left: 30px;
              position: relative;
              margin-bottom: 4px;
              border-radius: 5px;
              padding: 2px 8px 2px 28px;
              font-size: 14px;
              cursor: default;
              -webkit-transition: background-color 200ms ease-in-out;
              -moz-transition: background-color 200ms ease-in-out;
              -o-transition: background-color 200ms ease-in-out;
              transition: background-color 200ms ease-in-out;
            }
            .line-legend li:hover {
              background-color: #fafafa;
            }
            /**
             * Start by hiding the checkboxes
             */
            .checkbox-five>input[type=checkbox] {
              visibility: hidden;
            }

            /**
             * Create the box for the checkbox
             */
            .checkbox-five label {
              cursor: pointer;
              position: absolute;
              width: 25px;
              height: 25px;
              top: 0;
              left: 0;
              border:1px solid #ddd;
            }
            /**
             * Display the tick inside the checkbox
             */
            .checkbox-five label:after {
              opacity: 0.2;
              content: '';
              position: absolute;
              width: 9px;
              height: 5px;
              background: transparent;
              top: 8px;
              left: 7px;
              border: 3px solid #333;
              border-top: none;
              border-right: none;
              -webkit-transform: rotate(-45deg);
              -moz-transform: rotate(-45deg);
              -o-transform: rotate(-45deg);
              -ms-transform: rotate(-45deg);
              transform: rotate(-45deg);
            }
            /**
             * Create the hover event of the tick
             */
            .checkbox-five label:hover::after {
              opacity: 0.5;
            }
            /**
             * Create the checkbox state for the tick
             */
            .checkbox-five input[type=checkbox]:checked + label:after {
              opacity: 1;
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
        <li ><a href="#" style="color:#19ADEC">喵の配置</a></li>
        <li class="active" ><a href="#" >喵の客服</a></li>
        <li><a href="./adminlogin.jsp" style="color:#19ADEC"><%=session.getAttribute("workername") %></a></li>
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
		 	 	 	<li class="active">仪表盘</li>		 	 	 	
		 	 	</ol>
		 	 	
		 	 	
<div id="page-content-wrapper" style="overflow:hidden;width:1100px;margin-top:-20px">
	<div class="row">
	<!-- 中间的数据分析 -->
		<div class="col-sm-8 col-md-9" style="paddig-bottom:10px;margin-top:20px">
		<h4 style="color:#19ADEC">客服访问量统计：</h4>
		<br/>
           <canvas id="line-chart">           
            
           </canvas>
<% 
           Cadmin ca=new Cadmin();
           ca.getdata();
           ca.getTodaydata();
out.print("<div id='line-legend' "+" reltg="+ca.getTgnum()+" reltl="+ca.getTlnum()+" reltt="+ca.getTtnum()+" relag="+ca.getGnum()+" relat="+ca.getLnum()+" relal="+ca.getLnum()+"></div>");
%>



        <script>




   

        /**
         * 创建chartjs图表
         *
         * @param  {string}  chart_canvas_id        画布id
         * @param  {string}  legend_id              图例id
         * @param  {Array}   dataset_config         显示数据
         * @return {null}                           直接显示结果
         */
        var make_chartjs_graph = function(chart_canvas_id, legend_id, dataset_config) {
          /**
           * 复制数据
           * @param  {Array} datasets  待复制的折线图数据包
           * @return {Array}           克隆数据包
           */
          var get_display_datasets = function(datasets) {
            var final_datasets = new Array();
            $.each(datasets, function(index, value) {
              if (value) {
                final_datasets.push(value);
              };
            });
            return final_datasets;
          };

          var y_datasets = get_display_datasets(dataset_config.datasets);

          var chart = $('#' + chart_canvas_id);
          var legend = $('#' + legend_id);
          var lineChartData = dataset_config;

          var lineChartOptions = {
            //Boolean - If we should show the scale at all
            showScale: true,
            //Boolean - Whether grid lines are shown across the chart
            scaleShowGridLines: true,
            //String - Colour of the grid lines
            scaleGridLineColor: "rgba(0,0,0,.05)",
            //Number - Width of the grid lines
            scaleGridLineWidth: 1,
            //Boolean - Whether to show horizontal lines (except X axis)
            scaleShowHorizontalLines: true,
            //Boolean - Whether to show vertical lines (except Y axis)
            scaleShowVerticalLines: true,
            //Boolean - Whether the line is curved between points
            bezierCurve: true,
            //Number - Tension of the bezier curve between points
            bezierCurveTension: 0.3,
            //Boolean - Whether to show a dot for each point
            pointDot: true,
            //Number - Radius of each point dot in pixels
            pointDotRadius: 4,
            //Number - Pixel width of point dot stroke
            pointDotStrokeWidth: 1,
            //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
            pointHitDetectionRadius: 20,
            //Boolean - Whether to show a stroke for datasets
            datasetStroke: true,
            //Number - Pixel width of dataset stroke
            datasetStrokeWidth: 2,
            //Boolean - Whether to fill the dataset with a color
            datasetFill: false,
            //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
            maintainAspectRatio: true,
            //Boolean - whether to make the chart responsive to window resizing
            responsive: true,
            // 自定义数据提示tooltip  
            
          };


         
          // 初始化折线图
          var lineChartCanvas = chart.get(0).getContext("2d");
          var lineChart = new Chart(lineChartCanvas);
          var line_chart_handle = lineChart.Line(lineChartData, lineChartOptions);

          // 自定义图例
          var div_ul = $('<ul class="line-legend"></ul>');
          $.each(y_datasets, function(index, value) {
            var div_li = $('<li class="checkbox-five" ><input name="' + legend_id + '" type="checkbox" value="' + index + '" ><label for="' + legend_id + '" style="background-color:' + value.strokeColor + ';"></label><span>' + value.label + '</span></li>');
            div_ul.append(div_li);
          });

          // 将图例放置于指定位置
          legend.empty();
          legend.append(div_ul);

          // 给图例中的选框增加事件响应
          // 被选中的则显示其对应折线，未选中的不显示
          $('[name = ' + legend_id + ']:checkbox').each(function(key, value) {
            // 设置所有的checkbox为选中
            $(this).attr('checked', true);
            // 设置checkbox被取消选择之后，将该曲线消除
            $(this).click(function() {
              var index = $(this).attr('value');
              if ($(this).is(':checked')) {
                // 插入被选中折线上的点
                $.each(y_datasets[index].data, function(key, value) {
                  line_chart_handle.datasets[index].points.push(new line_chart_handle.PointClass({
                    value : value,
                    label : lineChartData.labels[key],
                    datasetLabel : lineChartData.datasets[index].label,
                    x: line_chart_handle.scale.calculateX(line_chart_handle.scale.valuesCount + 1),
                    y: line_chart_handle.scale.endPoint,
                    strokeColor : line_chart_handle.datasets[index].pointStrokeColor,
                    fillColor : line_chart_handle.datasets[index].pointColor
                  }));
                });
              } else {
                  // 删除被选中折线上的点
                for (var i = line_chart_handle.datasets[index].points.length - 1; i >= 0; i--) {
                  line_chart_handle.datasets[index].points.shift();
                }
              }

              // 更新折线
              line_chart_handle.update();
            });

            // 点击li时也视其为选中checkbox
            var li = $(this).parent();
            li.click(function() {
              $(this).children('input').get(0).click();
            });

          });
        };

        // 生成随机数
        var randomScalingFactor = function() {
            return Math.round(Math.random() * 100);
        };
        
        //获得总数据



       

       //获得今日数据
       var gettodaydata=function(){
    	   $.post("./src/cadmin.jsp",{type:"today"},function(data){
			   return JSON.parse(data);
    	   });
       }


    

        // 折线图id
        var chart_canvas_id = 'line-chart';

        // 图例id
        var legend_id = 'line-legend';

        // Y轴数据
        var default_datasets = [
            {
                label: "日访问量",
                fillColor : "rgba(220,220,220,0.2)",
                strokeColor : "rgba(220,220,220,1)",
                pointColor : "rgba(220,220,220,1)",
                pointStrokeColor : "#fff",
                pointHighlightFill : "#fff",
                pointHighlightStroke : "rgba(220,220,220,1)",
                data : [$("#line-legend").attr("reltt"),$("#line-legend").attr("reltg"),$("#line-legend").attr("reltl")]
            },
            {
                label: "总访问量",
                fillColor : "rgba(151,187,205,0.2)",
                strokeColor : "rgba(151,187,205,1)",
                pointColor : "rgba(151,187,205,1)",
                pointStrokeColor : "#fff",
                pointHighlightFill : "#fff",
                pointHighlightStroke : "rgba(151,187,205,1)",
                data : [$("#line-legend").attr("relat"),$("#line-legend").attr("relag"),$("#line-legend").attr("relal")]
            }
        ];

        // 打包折线图数据
        var lineChartData = {
            labels : ["旅游","游戏","家居生活"],
            datasets : default_datasets
        };

        // 生成图表
        make_chartjs_graph(chart_canvas_id, legend_id, lineChartData);
        </script>
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
                  List<String> con=(List<String>)Conversion.getcontext(); 	
  				 List<String> usr=(List<String>)Conversion.getusrname(); 	
  				 List<Integer> conid=(List<Integer>)Conversion.getconid(); 	
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
          	 	<i class="glyphicon glyphicon-user"></i><span class="username"></span>
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
<script>
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
        $.post("./src/Update_con.jsp",{conid:conid,workername:"admin",isstart:0});
        $.post("./Add_comment.jsp",{conid:conid,workername:"admin",isstart:0,context:inp,nowtime:nowtime});				
	});
   //AJAX 轮询操作
   
    setInterval(function(){
    	requestdata();
    	
    },3000);

   //向服务器请求最新的三列信息
   function requestdata(){
	   $.post("./src/conversion.jsp",function(data){
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
   

</script>
</body>
</html>
<%
        }
        else{
           response.sendRedirect("./adminlogin.jsp");
        }
        	%>
        	

