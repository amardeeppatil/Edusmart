package com.edusmart.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AboutTB;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.CommentLikeTb;
import com.edusmart.dao.NewsTB;
import com.edusmart.dao.UserProfileTB;
import com.edusmart.utils.DateApi;
import com.edusmart.utils.DateDifference;
import com.google.api.client.util.DateTime;

public class NewsAnnousement {
	private NewsTB newsTB;
	Map<Integer, NewsTB> newsMap = new LinkedHashMap<Integer, NewsTB>();
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	private String qquery = "AcademyId = '" + user.getAcademy().getAcademyId()+ "'";
	private String qquery2 = "userProfileTB = '" + user.getUserId() + "'ORDER BY newsId DESC";
	private String pastQuery = "userProfileTB = '" + user.getUserId() + "'ORDER BY newsId DESC";
	private String commentLikeQuery = "newsId <> 0";
	private List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
	private Calendar cal = Calendar.getInstance();
	private List<NewsTB> newsList = new ArrayList<NewsTB>();
	private List<NewsTB> pastNewsList = new ArrayList<NewsTB>();
	private List<NewsTB> pastNewsList2 = new ArrayList<NewsTB>();
	private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private DateDifference dateDifference = new DateDifference();
	private String upload_date;
	private DateApi dateApi;
	private AcademyTB academyTB;
	private List<CommentLikeTb> CommentLikeList = new ArrayList<CommentLikeTb>();
	
	public String saveNewsAnnousement() {
		if (academyList.size() > 0) {
			academyTB = AcademyTB.class.cast(academyList.get(0));
			newsTB.setEntryBy("Academy");
		}
		try {

			newsList = (List) CommonController.getAllObjects(NewsTB.class,qquery2);
			//upload_date = dateFormat.format(cal.getTime());
			String systemDate = sytemDateFun();
			newsTB.setUserProfileTB(user);
			newsTB.setDate(systemDate);
			CommonController.saveOrUpdateObject(newsTB);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String newsAnnousementDisplay() {
		try {
			if (academyList.size() > 0) {
				academyTB = AcademyTB.class.cast(academyList.get(0));
			}
			
			//newsList = (List) CommonController.getAllObjects(NewsTB.class,qquery2);
 			pastNewsList2 = (List) CommonController.getAllObjects(NewsTB.class,pastQuery);
 			CommentLikeList=(List) CommonController.getAllObjects(CommentLikeTb.class,commentLikeQuery);
 			
			if (pastNewsList2.size() > 0) {
  				Iterator<NewsTB> newsIterator = pastNewsList2.iterator();
				while (newsIterator.hasNext()) {
					newsTB = newsIterator.next();
					int days = 0;
					String entryDate ="";
					String expiryDate="";
					String systemDate = sytemDateFun();
					
					if (!newsTB.getEntryDate().isEmpty())
				    	{
					entryDate = DateApi.pickDate(newsTB.getEntryDate());
					  }
					if(!newsTB.getExpDate().isEmpty())
					  { 
						expiryDate = DateApi.pickDate(newsTB.getExpDate());
					  }
				 	
					Calendar entryD = geoFormatConvert(entryDate);
					Calendar systemD = geoFormatConvert(systemDate);

				
					//start date and end date logic
					if(!newsTB.getEntryDate().isEmpty() && !newsTB.getExpDate().isEmpty())
					  {
					long dayDiff=dayDifference(expiryDate,entryDate);
					
					System.out.println(">>>>"+dayDiff);
				      	
				      		long dayDiffPast=dayDifference(systemDate,expiryDate);
				      	    if(dayDiffPast>60){CommonController.deleteObject(newsTB.getNewsId(), NewsTB.class); return "success";}
				      	    else if(dayDiffPast<60 && dayDiffPast>30){	pastNewsList.add(newsTB); }
				      	    else if(dayDiffPast<30){	newsList.add(newsTB); }
				      	  			      	
					  
				    	}
					//End logic start date and end date 
					
					
					
					//start date given and end date =null
					if(!newsTB.getEntryDate().isEmpty() && newsTB.getExpDate().isEmpty())
					{
						long dayDiffCurrent=dayDifference(systemDate,entryDate);
						
							long dayDiffThirty=dayDifference(systemDate,entryDate);
							if(dayDiffThirty<30 ){newsList.add(newsTB);}
					   else if(dayDiffThirty<60 && dayDiffThirty>30){pastNewsList.add(newsTB);}
							
						    
						
					}
					
					//End start date given and end date =null
					
					
					//start date =null and end date =null
					/*if(newsTB.getEntryDate()=="" && newsTB.getExpDate()==""){
						long systemDateThirty=dayDifference(systemDate,currentdate);
							if(systemDateThirty<30){newsList.add(newsTB);}
					   else if(systemDateThirty<60){pastNewsList.add(newsTB);}
							
						     }*/
					//End start date =null given and end date =null
					
					
					
					/*int diffYear = systemD.get(Calendar.YEAR)- entryD.get(Calendar.YEAR);
					int diffMonth = diffYear * 12 + systemD.get(Calendar.MONTH)	- entryD.get(Calendar.MONTH);
					System.out.println("diffMonth " + diffMonth);
					if (diffMonth > 2) {
						pastNewsList.add(newsTB);
					}*/

				
			}
	}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	public long dayDifference(String systemDate,String entryDate){
		long diffInDays =0;
		try{
		Calendar entryD = geoFormatConvert(entryDate);
		Calendar systemD = geoFormatConvert(systemDate);

		
		long miliSecondForDate1 = entryD.getTimeInMillis();
		long miliSecondForDate2 = systemD.getTimeInMillis();
		
		long diffInMilis = miliSecondForDate2 - miliSecondForDate1;
		
		long diffInSecond = diffInMilis / 1000;
		long diffInMinute = diffInMilis / (60 * 1000);
		long diffInHour = diffInMilis / (60 * 60 * 1000);
		diffInDays = diffInMilis / (24 * 60 * 60 * 1000);
 
		System.out.println("Difference in Seconds : " + diffInSecond);
		System.out.println("Difference in Minute : " + diffInMinute);
		System.out.println("Difference in Hours : " + diffInHour);
		System.out.println("Difference in Days : " + diffInDays);
		}
		catch(Exception e){e.printStackTrace();}
		return diffInDays;
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

	public Calendar geoFormatConvert(String inputDate) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(inputDate);
		Calendar calendar = GregorianCalendar.getInstance();
		calendar.setTime(date);
		return calendar;

	}

	public String deleteNews() {

		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			int newsId = Integer.parseInt(request.getParameter("newsId"));
			CommonController.deleteObject(newsId, NewsTB.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";

	}

	// tempNews for holding data of news
	private NewsTB tempNews;

	public String academyUpdateNews() {
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

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public String pastNews() {

		return "success";
	}

	public AcademyTB getAcademyTB() {
		return academyTB;
	}

	public void setAcademyTB(AcademyTB academyTB) {
		this.academyTB = academyTB;
	}

	public NewsTB getNewsTB() {
		return newsTB;
	}

	public void setNewsTB(NewsTB newsTB) {
		this.newsTB = newsTB;
	}

	public List<NewsTB> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<NewsTB> newsList) {
		this.newsList = newsList;
	}

	public NewsTB getTempNews() {
		return tempNews;
	}

	public void setTempNews(NewsTB tempNews) {
		this.tempNews = tempNews;
	}

	public List<NewsTB> getPastNewsList() {
		return pastNewsList;
	}

	public void setPastNewsList(List<NewsTB> pastNewsList) {
		this.pastNewsList = pastNewsList;
	}

	public List<CommentLikeTb> getCommentLikeList() {
		return CommentLikeList;
	}

	public void setCommentLikeList(List<CommentLikeTb> commentLikeList) {
		CommentLikeList = commentLikeList;
	}

}
