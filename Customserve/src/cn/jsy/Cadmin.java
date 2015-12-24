package cn.jsy;

import cn.jsy.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Cadmin {
	
	
	
private    String gindex;
private int gnum;
private String tindex;
private int  tnum;
private String lindex;
private int lnum;
private int tgnum;
private int tlnum;
private int ttnum;
  
  public Cadmin(){
	  this.gindex="game";
	  this.lindex="live";
	  this.tindex="travel";
	  this.tgnum=0;
	  this.tlnum=0;
	  this.ttnum=0;
	  this.gnum=0;
	  this.lnum=0;
	  this.tnum=0;
  }
  /**
   * 
   * @throws SQLException
   */
  public void getdata() throws SQLException{
	  Connection conn=DBConn.GetConnection();
		PreparedStatement alldata=conn.prepareStatement("SELECT zone FROM cs_user LEFT JOIN cs_conversion ON cs_conversion.username=cs_user.username  ");
		ResultSet rs=alldata.executeQuery();
	    while(rs.next()){
	    String  zone=rs.getString("zone");
	     // out.print(zone);
	       if(zone.equals("game")){
	    	   this.setGnum(this.getGnum()+1);
	       }
	       else if(zone.equals("travel")){
	    	   this.setLnum(this.getTnum()+1);
	       }
	       else if(zone.equals("live")){
	    	   this.setTnum(this.getLnum()+1);
	       }
	    }	  
	    rs.close();
	    alldata.close();
	    conn.close(); 
  }
  
  public void getTodaydata() throws SQLException{
	  Connection conn=DBConn.GetConnection();
	  SimpleDateFormat date=new  SimpleDateFormat("yyyy-MM-dd");
	 String date1=date.format(new Date());
	  PreparedStatement todayData=conn.prepareStatement("SELECT zone FROM cs_user LEFT JOIN cs_conversion ON cs_conversion.username=cs_user.username WHERE cs_conversion.nowtime=?");
	  todayData.setString(1, date1);
	  ResultSet rs=todayData.executeQuery();
	  while(rs.next()){
		  String zone=rs.getString("zone");
	       if(zone.equals("game")){
	    	   this.setTgnum(this.getTgnum()+1);
	       }
	       else if(zone.equals("travel")){
	    	   this.setTlnum(this.getTtnum()+1);
	       }
	       else if(zone.equals("live")){
	    	   this.setTtnum(this.getTlnum()+1);
	       }
	    }	 
	    rs.close();
	    todayData.close();
	    conn.close(); 
	  }

  
  
public String getGindex() {
	return gindex;
}

public void setGindex(String gindex) {
	this.gindex = gindex;
}

public int getGnum() {
	return gnum;
}

public void setGnum(int gnum) {
	this.gnum = gnum;
}

public String getTindex() {
	return tindex;
}

public void setTindex(String tindex) {
	this.tindex = tindex;
}

public int getTnum() {
	return tnum;
}

public void setTnum(int tnum) {
	this.tnum = tnum;
}

public String getLindex() {
	return lindex;
}

public void setLindex(String lindex) {
	this.lindex = lindex;
}

public int getLnum() {
	return lnum;
}

public void setLnum(int lnum) {
	this.lnum = lnum;
}
public int getTgnum() {
	return tgnum;
}
public void setTgnum(int tgnum) {
	this.tgnum = tgnum;
}
public int getTlnum() {
	return tlnum;
}
public void setTlnum(int tlnum) {
	this.tlnum = tlnum;
}
public int getTtnum() {
	return ttnum;
}
public void setTtnum(int ttnum) {
	this.ttnum = ttnum;
}
  

  
}
