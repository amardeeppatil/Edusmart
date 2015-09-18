package com.edusmart.action;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.EventsTB;
import com.edusmart.dao.NewsTB;
import com.edusmart.dao.UserProfileTB;
import com.edusmart.utils.DateApi;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EventProfileAction extends ActionSupport implements ModelDriven<EventsTB> {
	
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	
	private	EventsTB eventsTB=new EventsTB();	
	private List<EventsTB> eventList=new ArrayList<EventsTB>();
	private EventAction eventAction=new EventAction();
	private String qquery = "AcademyId = '" + user.getAcademy().getAcademyId() + "'";
	private List<AcademyTB> academyList = (List) CommonController.getAllObjects(AcademyTB.class, qquery);
	private AcademyTB academyTB;
	public AcademyTB getAcademyTB() {
		return academyTB;
	}

	public void setAcademyTB(AcademyTB academyTB) {
		this.academyTB = academyTB;
	}

	public EventAction getEventAction() {
		return eventAction;
	}

	public void setEventAction(EventAction eventAction) {
		this.eventAction = eventAction;
	}

	public UserProfileTB getUser() {
		return user;
	}

	public void setUser(UserProfileTB user) {
		this.user = user;
	}

	public EventsTB getEventsTB() {
		return eventsTB;
	}

	public void setEventsTB(EventsTB eventsTB) {
		this.eventsTB = eventsTB;
	}

	public List<EventsTB> getEventList() {
		return eventList;
	}

	public void setEventList(List<EventsTB> eventList) {
		this.eventList = eventList;
	}

	

	@Override
	public EventsTB getModel() {
		// TODO Auto-generated method stub
		return eventsTB;
	}
	private List<EventsTB> pastNewsList = new ArrayList<EventsTB>();
	private Calendar cal = Calendar.getInstance();
	private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private String upload_date;
	private String pastQuery="userProfileTB = '" + user.getUserId() + "'";
	private List<EventsTB> pastEventList2 = new ArrayList<EventsTB>();
	public String viewEventPage(){
		
		try{
			
		System.out.println("in viewEventPage...");
		
		if (academyList.size() > 0) 
    	{ 
    		
    	academyTB = AcademyTB.class.cast(academyList.get(0));
    	
    	}
		eventList= eventAction.showEvent();

		pastEventList2= (List) CommonController.getAllObjects(EventsTB.class, pastQuery);
    	
    	if(pastEventList2.size()>0){
    		Iterator<EventsTB > eventsIterator=pastEventList2.iterator();
    		while(eventsIterator.hasNext())
    		{
    	       eventsTB=eventsIterator.next();
    	    int days = 0;
    	   
    	    String systemDate=sytemDateFun();
    	    String entryDate=DateApi.pickDate(eventsTB.getEntryDate());
    	    System.out.println("systemDate  =>>"+systemDate +"db data"+entryDate);
    	    
    	   Calendar entryD= geoFormatConvert(entryDate);
    	   Calendar systemD= geoFormatConvert(systemDate);
    	   
    	   int diffYear = systemD.get(Calendar.YEAR) - entryD.get(Calendar.YEAR);
    	   int diffMonth = diffYear * 12 + systemD.get(Calendar.MONTH) - entryD.get(Calendar.MONTH);
    	   System.out.println("diffMonth "+diffMonth);
    	   if(diffMonth>2)
    	      {
    	        pastNewsList.add(eventsTB);
    	      }
    	   
    	   }
    	}
    }
    	catch(Exception e){e.printStackTrace();}
		
		return "success";
	}

    public String sytemDateFun(){
    	
    	upload_date= dateFormat.format(cal.getTime());
    	 
    	return upload_date;
    }
    public Calendar geoFormatConvert(String inputDate) throws ParseException{
    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    	Date date =format.parse(inputDate);
    	Calendar calendar =GregorianCalendar.getInstance();
    	calendar.setTime(date);
    	return  calendar;
    	
    }
	 private  EventsTB tempEvents;
	    public String academyUpdateEvent(){
	    	try{
	    		eventList=(List)CommonController.getAllObjects(EventsTB.class, "EventId='"+eventsTB.getEventId()+"'");
	        	if(eventList.size()>0){
	        		tempEvents=(EventsTB)eventList.get(0);
	        		eventsTB.setDate(tempEvents.getDate());
	        		eventsTB.setEntryBy(tempEvents.getEntryBy());
	        		eventsTB.setUserProfileTB(tempEvents.getUserProfileTB());
	        	}
	    		System.out.println("sp Data"+eventsTB.getEventId());
	    		CommonController.saveOrUpdateObject(eventsTB);
	        	
	    	}catch(Exception e){
	    		e.printStackTrace();
	    	}
	    	return "success";
	    }

		public List<EventsTB> getPastNewsList() {
			return pastNewsList;
		}

		public void setPastNewsList(List<EventsTB> pastNewsList) {
			this.pastNewsList = pastNewsList;
		}
		
}
