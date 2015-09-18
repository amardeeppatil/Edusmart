package com.edusmartweb.edusmart.service;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.AcademyTB;
import com.edusmartweb.edusmart.model.CommentLikeTb;
import com.edusmartweb.edusmart.model.NewsTB;
import com.edusmartweb.edusmart.model.UserProfileTB;

public class NewsService {

	private DateApi dateApi;
	private AcademyTB academyTB;
	private List<NewsTB> pastNewsList2 = new ArrayList<NewsTB>();
	private String commentLikeQuery = "newsId <> 0";
	private String upload_date;
	private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	
	private Calendar cal = Calendar.getInstance();
	private NewsTB newsTB;
	
	public Model newsDisplayService(Model model,HttpServletRequest request)
	{    
		  List<NewsTB> newsList = new ArrayList<NewsTB>();
	      List<NewsTB> pastNewsList = new ArrayList<NewsTB>();
		 UserProfileTB user = UserProfileTB.class.cast(request.getSession().getAttribute("USER"));
		 String qquery = "AcademyId = '" + user.getAcademy().getAcademyId()+ "'";
		 List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
		 List<CommentLikeTb> CommentLikeList = new ArrayList<CommentLikeTb>();
		 String pastQuery = "userProfileTB = '" + user.getUserId() + "'ORDER BY newsId DESC";
		
		 try {
				if (academyList.size() > 0) {
					academyTB = AcademyTB.class.cast(academyList.get(0));
				}
				
				//newsList = (List) CommonController.getAllObjects(NewsTB.class,qquery2);
	 			pastNewsList2 = (List) CommonController.getAllObjects(NewsTB.class,pastQuery);
	 			CommentLikeList=(List) CommonController.getAllObjects(CommentLikeTb.class,commentLikeQuery);
	 			
	 			model.addAttribute("CommentLikeList", CommentLikeList);
	 			model.addAttribute("academyTB", academyTB);
	 			
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
					      	    if(dayDiffPast>60)
					      	    {
					      	    	CommonController.deleteObject(newsTB.getNewsId(), NewsTB.class);
					      	    	return model;//return All list
					      	   	}
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
					model.addAttribute("pastNewsList", pastNewsList);
					model.addAttribute("newsList", newsList);
		}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return model;
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
	
	public Calendar geoFormatConvert(String inputDate) throws ParseException  {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = format.parse(inputDate);
		Calendar calendar = GregorianCalendar.getInstance();
		calendar.setTime(date);
		return calendar;

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
	
}
