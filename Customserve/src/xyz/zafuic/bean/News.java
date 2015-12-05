package xyz.zafuic.bean;
import java.util.Date;
import java.util.Locale;
import java.text.SimpleDateFormat;
public class News {
	//分类编码
private int type_id;
 //新闻题目
private String title;
//是否启用
private int use_flag;
//内容
private String content;
//是否推荐
private int important_flag;
//User id
private int add_user_id;
//Add time
private String addtime;
//备注
private String remark;

public  News(){
	SimpleDateFormat sdf=new SimpleDateFormat("",Locale.SIMPLIFIED_CHINESE);
	sdf.applyPattern("YY-MM-dd");
	this.setAddtime(sdf.format(new Date()));
	
	this.setAdd_user_id(-1);
	this.setUse_flag(1);
}


public int getTyepid(){
	return type_id;
}


public String getTitle() {
	return title;
}


public void setTitle(String title) {
	this.title = title;
}


public int getUse_flag() {
	return use_flag;
}


public void setUse_flag(int use_flag) {
	this.use_flag = use_flag;
}


public String getContent() {
	return content;
}


public void setContent(String content) {
	this.content = content;
}


public int getImportant_flag() {
	return important_flag;
}


public void setImportant_flag(int important_flag) {
	this.important_flag = important_flag;
}


public int getAdd_user_id() {
	return add_user_id;
}


public void setAdd_user_id(int add_user_id) {
	this.add_user_id = add_user_id;
}


public String getAddtime() {
	return addtime;
}


public void setAddtime(String addtime) {
	this.addtime = addtime;
}


public String getRemark() {
	return remark;
}


public void setRemark(String remark) {
	this.remark = remark;
}

}
