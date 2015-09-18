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
import com.edusmart.dao.EventsTB;
import com.edusmart.dao.NotificationTb;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EventAction extends ActionSupport implements ModelDriven<EventsTB> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// Session Object
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext
			.getRequest().getSession().getAttribute("USER"));
	private EventsTB eventsTB;
	private List<EventsTB> eventList = new ArrayList<EventsTB>();

	private NotificationTb notificationTb =new NotificationTb();
	private String qquery = "AcademyId = '" + user.getAcademy().getAcademyId()
			+ "'";
	private String qquery3 = "userProfileTB = '" + user.getUserId() + "'ORDER BY eventId DESC";
	private String qquery2 = "userProfileTB = '" + user.getUserId() + "'";
	private List<AcademyTB> academyList = (List) CommonController
			.getAllObjects(AcademyTB.class, qquery);
	private Calendar cal = Calendar.getInstance();
	/*private DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");*/
	private DateFormat dateFormat = new SimpleDateFormat("dd-MMMM-yyyy hh:mm a");
	private String pick_date;
	private AcademyTB academyTB;
	int eventId;

	public String addEvent() {

		try {
			System.out.println("in add event....");
			if (academyList.size() > 0) {
				academyTB = AcademyTB.class.cast(academyList.get(0));
				eventsTB.setEntryBy("Academy");
			}

			eventList = (List) CommonController.getAllObjects(EventsTB.class,qquery2);
			pick_date = dateFormat.format(cal.getTime());
			eventsTB.setUserProfileTB(user);
			eventsTB.setDate(pick_date);
			eventsTB.setStatus(1);
			
			
			notificationTb.setNotificationDate(pick_date);
			notificationTb.setUserProfileTB(user);
			notificationTb.setNotificationBy(user.getFName());
			notificationTb.setNotificationContent(eventsTB.getEventContent());
			CommonController.saveOrUpdateObject(notificationTb);
			

			CommonController.saveOrUpdateObject(eventsTB);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}

	public List<EventsTB> showEvent() {

		try {

			if (academyList.size() > 0) {

				academyTB = AcademyTB.class.cast(academyList.get(0));

			}
			eventList = (List) CommonController.getAllObjects(EventsTB.class,
					qquery3);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return eventList;
	}

	public String flushEvent() {

		try {

			HttpServletRequest request = ServletActionContext.getRequest();
			eventId = Integer.parseInt(request.getParameter("eventId"));

			CommonController.deleteObject(eventId, EventsTB.class);
		} catch (Exception e) {

			e.printStackTrace();

		}
		System.out.println("object deleted....");
		return "success";

	}
	
	

	public NotificationTb getNotificationTb() {
		return notificationTb;
	}

	public void setNotificationTb(NotificationTb notificationTb) {
		this.notificationTb = notificationTb;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getQquery() {
		return qquery;
	}

	public void setQquery(String qquery) {
		this.qquery = qquery;
	}

	public String getQquery2() {
		return qquery2;
	}

	public void setQquery2(String qquery2) {
		this.qquery2 = qquery2;
	}

	public List<AcademyTB> getAcademyList() {
		return academyList;
	}

	public void setAcademyList(List<AcademyTB> academyList) {
		this.academyList = academyList;
	}

	public Calendar getCal() {
		return cal;
	}

	public void setCal(Calendar cal) {
		this.cal = cal;
	}

	public DateFormat getDateFormat() {
		return dateFormat;
	}

	public void setDateFormat(DateFormat dateFormat) {
		this.dateFormat = dateFormat;
	}

	public String getPick_date() {
		return pick_date;
	}

	public void setPick_date(String pick_date) {
		this.pick_date = pick_date;
	}

	public AcademyTB getAcademyTB() {
		return academyTB;
	}

	public void setAcademyTB(AcademyTB academyTB) {
		this.academyTB = academyTB;
	}

	@Override
	public EventsTB getModel() {
		// TODO Auto-generated method stub
		return eventsTB;
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

}
