package xyz.zafuic;

public class news {
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

public int getTyepid(){
	return type_id;
}

}
