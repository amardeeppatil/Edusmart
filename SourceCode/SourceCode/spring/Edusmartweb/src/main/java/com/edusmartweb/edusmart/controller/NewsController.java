package com.edusmartweb.edusmart.controller;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.CommentLikeTb;
import com.edusmartweb.edusmart.model.NewsTB;
import com.edusmartweb.edusmart.model.UserProfileTB;
import com.edusmartweb.edusmart.service.NewsService;

@Controller
public class NewsController {
	private AcademyTB academyTB;
	private NewsTB newsTB;
	private List<NewsTB> newsList = new ArrayList<NewsTB>();
	private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private Calendar cal = Calendar.getInstance();
	NewsService newsService=new NewsService();
	private String upload_date;
	
	@RequestMapping(value="newsPage")
	public String newsDisplay(Model model,HttpServletRequest request)
	{
		
        model=newsService.newsDisplayService(model,request);
		
		return "newsShow";
	}
	@RequestMapping(value="saveNewsAnnousement")
	public String saveNews(HttpServletRequest request,Model model,@ModelAttribute NewsTB newsTB){
		try {
		UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		String qquery2 = "userProfileTB = '" + user.getUserId() + "'ORDER BY newsId DESC";
		String qquery = "AcademyId = '" + user.getAcademy().getAcademyId()+ "'";
		 //NewsTB newsTB=new NewsTB();
		List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
		if (academyList.size() > 0) {
			academyTB = AcademyTB.class.cast(academyList.get(0));
			newsTB.setEntryBy("Academy");
		}
		
			newsList = (List) CommonController.getAllObjects(NewsTB.class,qquery2);
			//upload_date = dateFormat.format(cal.getTime());
			String systemDate = sytemDateFun();
			newsTB.setUserProfileTB(user);
			newsTB.setDate(systemDate);
			CommonController.saveOrUpdateObject(newsTB);
			model=newsService.newsDisplayService(model,request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "newsShow";
		
		
		
	}
	
	public String sytemDateFun() {

		upload_date = dateFormat.format(cal.getTime());
		/*
		 * int day,month,year ; GregorianCalendar date = new
		 * GregorianCalendar(); day = date.get(Calendar.DAY_OF_MONTH); month =
		 * 7;date.get(Calendar.MONTH); year = date.get(Calendar.YEAR); String
		 * systemDate =year+"-"+month+"-"+day;
		 */

		return upload_date;
	}
	@RequestMapping(value="deleteNews")
	
public void deleteNewsDb(HttpServletRequest request)
	{
		try {
			int newsId = Integer.parseInt(request.getParameter("newsId"));
			CommonController.deleteObject(newsId, NewsTB.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	private NewsTB tempNews;
	
	
	@RequestMapping(value="editNews")
	public String academyUpdateNews(Model model,HttpServletRequest request,@ModelAttribute NewsTB newsTB) {
		try {
			newsList = (List) CommonController.getAllObjects(NewsTB.class,"newsId='" + newsTB.getNewsId() + "'");
			if (newsList.size() > 0) {
				tempNews = (NewsTB) newsList.get(0);
				newsTB.setDate(tempNews.getDate());
				newsTB.setEntryBy(tempNews.getEntryBy());
				newsTB.setUserProfileTB(tempNews.getUserProfileTB());
			}
			System.out.println("sp Data" + newsTB.getNewsId());
			CommonController.saveOrUpdateObject(newsTB);
			model=newsService.newsDisplayService(model,request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "newsShow";
	}

	
	
}
