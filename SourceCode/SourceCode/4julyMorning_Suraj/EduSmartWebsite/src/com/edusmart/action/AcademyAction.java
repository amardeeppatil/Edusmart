package com.edusmart.action;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.City;
import com.edusmart.dao.CountryTB;
import com.edusmart.dao.Faculty;
import com.edusmart.dao.NewsTB;
import com.edusmart.dao.StateTB;
import com.edusmart.dao.UserProfileTB;
import com.edusmart.utils.HibernateUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AcademyAction extends ActionSupport implements
		ModelDriven<AcademyTB> {

	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext
			.getRequest().getSession().getAttribute("USER"));
	private static final long serialVersionUID = 1L;
	private AcademyTB academy;
	private UserProfileTB faculty;
	private List<UserProfileTB> facultyList = new ArrayList<UserProfileTB>();
	private List<UserProfileTB> centerList = new ArrayList<UserProfileTB>();
	private List<AcademyTB> academyList = new ArrayList<AcademyTB>();
	private List<NewsTB> newsList = new ArrayList<NewsTB>();
	//Session session;
	HttpServletRequest request;
		
	Map<Integer, String> resultMap = new LinkedHashMap<Integer, String>();
	

	public List<NewsTB> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<NewsTB> newsList) {
		this.newsList = newsList;
	}

	public UserProfileTB getFaculty() {
		return faculty;
	}

	public void setFaculty(UserProfileTB faculty) {
		this.faculty = faculty;
	}

	private Map<String, String> countryMap = new LinkedHashMap<String, String>();
	private Map<String, String> stateMap = new LinkedHashMap<String, String>();
	private Map<String, String> cityMap = new LinkedHashMap<String, String>();
	private String stateID;
	String academyheader;

	@Override
	public AcademyTB getModel() {
		// TODO Auto-generated method stub
		return academy;
	}

	public UserProfileTB getUser() {
		return user;
	}

	public void setUser(UserProfileTB user) {
		this.user = user;
	}

	public AcademyTB getAcademy() {
		return academy;
	}

	public void setAcademy(AcademyTB academy) {
		this.academy = academy;
	}

	public List<AcademyTB> getAcademyList() {
		return academyList;
	}

	public void setAcademyList(List<AcademyTB> academyList) {
		this.academyList = academyList;
	}

	public Map<String, String> getCountryMap() {
		return countryMap;
	}

	public void setCountryMap(Map<String, String> countryMap) {
		this.countryMap = countryMap;
	}

	public Map<String, String> getStateMap() {
		return stateMap;
	}

	public void setStateMap(Map<String, String> stateMap) {
		this.stateMap = stateMap;
	}

	public Map<String, String> getCityMap() {
		return cityMap;
	}

	public void setCityMap(Map<String, String> cityMap) {
		this.cityMap = cityMap;
	}

	public String getStateID() {
		return stateID;
	}

	public void setStateID(String stateID) {
		this.stateID = stateID;
	}

	public String getAcademyheader() {
		return academyheader;
	}

	public void setAcademyheader(String academyheader) {
		this.academyheader = academyheader;
	}

	public String saveOrUpdateAcademy() {

		System.out.println("for edit...");

		UserProfileTB user = UserProfileTB.class.cast(ServletActionContext
				.getRequest().getSession().getAttribute("USER"));
		if (user != null) {

			/*
			 * faculty.setEContact(faculty.getEContact());
			 * faculty.setEFName(faculty.getEFName());
			 * faculty.setAcademy(user.getAcademy());
			 */
			// faculty.setCCity(City.class.cast(CommonController.getObjectById(
			// AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(),
			// AcademyTB.class)).getCity(), City.class)).getCityName());
			// faculty.setCState(StateTB.class.cast(CommonController.getObjectById(
			// AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(),
			// AcademyTB.class)).getState(), StateTB.class)).getStateName());

			academy.setOwnerFirstName(academy.getOwnerFirstName());
			// academy.setCity(AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(),
			// AcademyTB.class)).getCity(), City.class).getCityName();
			CommonController.saveOrUpdateObject(academy);
			return "success";
		}
		return "";

	}

	
	public List<UserProfileTB> getAllCenters() {

		System.out.println("in Academy center list");

		List<Class<?>> list1 = CommonController.getAllObjects(
				UserProfileTB.class, "Status = 1 and UserType = 2");

		for (int i = 0; i < list1.size(); i++) {
			UserProfileTB c = UserProfileTB.class.cast(list1.get(i));
			centerList.add(c);
			System.out.println(i);
		}

		return centerList;
	}

	public List<UserProfileTB> getAllFaculties() {

		System.out.println("in Academy faculty list");

		List<Class<?>> list = CommonController.getAllObjects(
				UserProfileTB.class, "Status = 1 and UserType = 3");

		for (int i = 0; i < list.size(); i++) {
			UserProfileTB b = UserProfileTB.class.cast(list.get(i));
			facultyList.add(b);
			System.out.println(i);
		}

		return facultyList;
	}

	// for news List...

	public List<NewsTB> getAllNews() {

		System.out.println("in Academy News list");

		HttpServletRequest request = (HttpServletRequest) ActionContext
				.getContext().get(ServletActionContext.HTTP_REQUEST);

		List<Class<?>> list = CommonController.getAllObjects(NewsTB.class,"Status = 1");

		for (int i = 0; i < list.size(); i++) {
			NewsTB news = NewsTB.class.cast(list.get(i));
			newsList.add(news);
			System.out.println(i);
		}

		request.setAttribute("newsList", newsList);

		return newsList;
	}

	/*
	 * public AboutUs getAboutus(){
	 * 
	 * session.beginTransaction(); Criteria
	 * criteria=session.createCriteria(AboutUs.class);
	 * criteria.add(Restrictions.eq("aboutId", aboutUs.getAboutId())); AboutUs
	 * about=(AboutUs) criteria.uniqueResult();
	 * 
	 * if(about !=null){ System.out.println("about info.........");
	 * System.out.println(about.getAboutDesc() +"  "+ about.getAddress() ); }
	 * return about; }
	 */

	/*
	 * public void populateCountry(){ List<Class<?>> objects =
	 * CommonController.getAllObjects(CountryTB.class, "Status = 1"); for(int
	 * i=0; i<objects.size(); i++){ CountryTB country =
	 * CountryTB.class.cast(objects.get(i));
	 * countryMap.put(""+country.getCountryID(), country.getCountryName()); } }
	 * 
	 * public String getAllFaculties(){ setHeader("header2"); List<Class<?>>
	 * list = new ArrayList<Class<?>>(); if (user.getUserType() == 1){ // For
	 * SuperAdmin Display All Faculties list =
	 * CommonController.getAllObjects(UserProfileTB.class,
	 * "Status = 1 and UserType = 3"); } else if(user.getUserType() == 2){ //
	 * For Academy Admin Display themself Faculties list =
	 * CommonController.getAllObjects(UserProfileTB.class,
	 * "Status = 1 and UserType = 3 and Academy = " +
	 * user.getAcademy().getAcademyId()); }
	 * 
	 * for(int i=0; i<list.size(); i++){ UserProfileTB b =
	 * UserProfileTB.class.cast(list.get(i)); facultyList.add(b);
	 * System.out.println(i); } populateCountry(); populateCities(); return
	 * "success"; }
	 * 
	 * public String getFacultyById(){
	 * 
	 * System.out.println(" Faculty edit.....!!!!!"); HttpServletRequest request
	 * = (HttpServletRequest)
	 * ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
	 * faculty =
	 * UserProfileTB.class.cast(CommonController.getObjectById(Integer.
	 * parseInt(request.getParameter("FacultyId")), UserProfileTB.class));
	 * 
	 * populateCountry(); populateStates(); populateCities();
	 * 
	 * return "success"; }
	 * 
	 * public String deleteFaculty(){ HttpServletRequest request =
	 * (HttpServletRequest)
	 * ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
	 * CommonController
	 * .deleteObject(Integer.parseInt(request.getParameter("FacultyId")),
	 * UserProfileTB.class); return "success"; }
	 * 
	 * public void populateStates() { List<Class<?>> objects =
	 * CommonController.getAllObjects(StateTB.class, "Status = 1"); for(int i =
	 * 0 ; i < objects.size(); i++){ StateTB state =
	 * StateTB.class.cast(objects.get(i)); stateMap.put(""+state.getStateid(),
	 * state.getStateName()); } }
	 * 
	 * public void populateCities() { List<Class<?>> objects =
	 * CommonController.getAllObjects(City.class, "Status = 1"); for(int i = 0 ;
	 * i < objects.size(); i++){ City city = City.class.cast(objects.get(i));
	 * cityMap.put(""+city.getCityId(), city.getCityName()); } }
	 */

}
