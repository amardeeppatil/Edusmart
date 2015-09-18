package com.edusmart.action;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.NewsTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class NewsAction extends ActionSupport implements ModelDriven<NewsTB> {
	
	// Session Object
			UserProfileTB user = UserProfileTB.class.cast(ServletActionContext
					.getRequest().getSession().getAttribute("USER"));
			
			NewsTB news=new NewsTB();
			private List<NewsTB> newsList = new ArrayList<NewsTB>();
			
			public List<NewsTB> getNewsList() {
				return newsList;
			}

			public void setNewsList(List<NewsTB> newsList) {
				this.newsList = newsList;
			}

			public NewsTB getNews() {
				return news;
			}

			public void setNews(NewsTB news) {
				this.news = news;
			}

			public UserProfileTB getUser() {
				return user;
			}

			public void setUser(UserProfileTB user) {
				this.user = user;
			}

			@Override
			public NewsTB getModel() {
				// TODO Auto-generated method stub
				return news;
			}
			
			public String saveOrUpdateNews()  {
				
				System.out.println("in news Action..............");
				news.setTitle(news.getTitle());
				news.setDate(news.getDate());
				news.setNewsContent(news.getNewsContent());
				news.setStatus(1);
								
				CommonController.saveOrUpdateObject(news);
								
				return "success";
			}
			
			public List<NewsTB> fetchNewsList(){
				
				System.out.println("in NewsAction getAllNews()");
				
				HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
				
				List<Class<?>> list = CommonController.getAllObjects(NewsTB.class, "Status = 1");
				
				
				for(int i=0; i<list.size(); i++){
					NewsTB news = NewsTB.class.cast(list.get(i));
					newsList.add(news);
					System.out.println(i);
				}
				
				request.setAttribute("newsList", newsList);
				
				return newsList;
			}
			

}
