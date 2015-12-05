<%
    try{
    		Class.forName( "com.mysql.jdbc.Driver" );// 加载MySql数据驱动
    	    con = DriverManager.getConnection( 
    	    	"jdbc:mysql://localhost:3306/customer service",
				"root", 
				"123456" );// 创建数据库连接
				
%>