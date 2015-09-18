package com.edusmart.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.CommentLikeTb;
import com.edusmart.dao.UserProfileTB;
import com.sun.jndi.url.corbaname.corbanameURLContextFactory;

public class CommentLikeAction {
	private CommentLikeTb commentLikeTb;
	private Calendar cal = Calendar.getInstance();
	private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	
	
	
	public String saveCommentData() {
		HttpServletRequest request = ServletActionContext.getRequest();	 
		int newsId=Integer.parseInt(request.getParameter("newsId"));
		qquery = "newsId =" +newsId;
		List<CommentLikeTb> CommentLikeList = (List) CommonController.getAllObjects(CommentLikeTb.class, qquery);
		try{
			String date=dateFormat.format(cal.getTime());
		commentLikeTb.setCommentDate(date);
		commentLikeTb.setCommentContent(request.getParameter("commentContents"));
		commentLikeTb.setCommentById(user.getUserId());
		commentLikeTb.setCommentBy("Academy");//set manually as per user 
		CommonController.saveOrUpdateObject(commentLikeTb);
		
		}catch(Exception e){e.printStackTrace();}
		return "success";
	}
	
	
	private ArrayList<Integer> likeIdList=new ArrayList<Integer>();
	private String qquery; 
	private int likeCount;
public String likeCountFunction(){
	try{
	HttpServletRequest request = ServletActionContext.getRequest();
	int newsId=Integer.parseInt(request.getParameter("activeId"));
	String InputValue=request.getParameter("value");
	
	System.out.println("call=====>>"+request.getParameter("activeId"));
	System.out.println("value=====>>"+request.getParameter("value"));
	
	
	qquery = "newsId =" +request.getParameter("activeId");
    List<CommentLikeTb> CommentLikeList = (List) CommonController.getAllObjects(CommentLikeTb.class, qquery);
    if(CommentLikeList.size()>0){
    	CommentLikeTb commentLikeTemp=CommentLikeList.get(0);
    	likeCount=commentLikeTemp.getLikeCount();
    	if(InputValue.equals("Like"))
    	   {
        likeCount++;
    	commentLikeTemp.setLikeById(user.getUserId());
    	likeIdList.add(user.getUserId());
    	commentLikeTemp.setLikeByIdList(likeIdList);
        
    	   }
    	if(InputValue.equals(InputValue))
    	{	
    		
    		likeCount--;
    		likeIdList.remove(user.getUserId());
    	/*It will delete if error occured*/
    	commentLikeTemp.setLikeById(0);
    	}
    	commentLikeTemp.setLikeCount(likeCount);
    	commentLikeTemp.setLikeby("Academy");
    	commentLikeTemp.setNewsId(newsId);
    	
        CommonController.saveOrUpdateObject(commentLikeTemp);
    }
    else {
    	    CommentLikeTb commentLikeNew=new CommentLikeTb();
    	    likeCount=1;
    	    commentLikeNew.setLikeCount(likeCount);
    	    commentLikeNew.setLikeby("Academy");
    	    commentLikeNew.setLikeById(user.getUserId());
    	    commentLikeNew.setNewsId(newsId);
    	    CommonController.saveOrUpdateObject(commentLikeNew);
	     }
    
	}
	catch (Exception e){
		e.printStackTrace();
		}
	return "success";
	
}
	private  String newsActiveId;
	
	public String getNewsActiveId() {
		return newsActiveId;
	}
	public void setNewsActiveId(String newsActiveId) {
		this.newsActiveId = newsActiveId;
	}
	public CommentLikeTb getCommentLikeTb() {
		return commentLikeTb;
	}

	public void setCommentLikeTb(CommentLikeTb commentLikeTb) {
		this.commentLikeTb = commentLikeTb;
	}
	public ArrayList<Integer> getLikeIdList() {
		return likeIdList;
	}
	public void setLikeIdList(ArrayList<Integer> likeIdList) {
		this.likeIdList = likeIdList;
	}
	
}
