package com.edusmart.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.edusmart.dao.NewsTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;





public class NewsProfileAction extends ActionSupport implements ModelDriven<NewsTB>{
	
	 //String page;
	 
	 UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	 
		
		//private String academyheader;
		private NewsTB news=new NewsTB();
		private List<NewsTB> newsList = new ArrayList<NewsTB>();
		private NewsAction newsAction=new NewsAction();
		
		public NewsAction getNewsAction() {
			return newsAction;
		}

		public void setNewsAction(NewsAction newsAction) {
			this.newsAction = newsAction;
		}

		public List<NewsTB> getNewsList() {
			return newsList;
		}

		public void setNewsList(List<NewsTB> newsList) {
			this.newsList = newsList;
		}

		public UserProfileTB getUser() {
			return user;
		}

		public void setUser(UserProfileTB user) {
			this.user = user;
		}
	
	public NewsTB getNews() {
			return news;
		}

		public void setNews(NewsTB news) {
			this.news = news;
		}

public String viewNewsPage(){
		
		newsList=newsAction.fetchNewsList();
		
		return "success";
	}

	@Override
	public NewsTB getModel() {
		// TODO Auto-generated method stub
		return news;
	}
	
}

	