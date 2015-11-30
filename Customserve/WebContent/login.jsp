<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.css" rel="stylesheet">
  <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<title>喵の登陆</title>
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
        <li  ><a href="./index.jsp" style="color:#fff">喵の客服主页<span class="sr-only">Now choose</span></a></li>
        <li class="active"><a href="./login.jsp">喵の登陆</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>

  <h3 class="text-center" >喵~~~在这里进♂入哦~</h3>
  
<img src="./cat1.jpg" class="img-rounded" alt="喵！" style="margin-left:35%">
  

<div style="margin-left:20%; margin-top:10px" >

<!-- 

FORM 
      前台id说明：
      input name :单元格名字
      
      username：名字
      
      password: 密码


 -->
  <form class="form-horizontal" method="post" action="">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">喵~名</label>
    <div class="col-sm-10" style="width:50%">
      <input type="text" class="form-control" id="username" placeholder="这里写用户名喵~~~~" name="username">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">喵~密码</label>
    <div class="col-sm-10" style="width:50%">
      <input type="password" class="form-control" id="passwords" placeholder="喵~~~我们不会看你的密码的~" name="password">
    </div>
  </div>
  <br/>
  <br/>

<div>
  <div class="form-group" style="margin-left:8%">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary" style="margin-right:5%">Zzzz登陆zzzZ</button>
      <a type="button" class="btn btn-primary" href="./regist.jsp">Oooo注册oooO</a>
    </div>
  </div>  
  </div>
</form>
    

</div>
</body>
</html>