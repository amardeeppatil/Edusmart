package com.edusmart.action;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.City;
import com.edusmart.dao.CountryTB;
import com.edusmart.dao.StateTB;
import com.edusmart.dao.UserProfileTB;
import com.edusmart.utils.RandomPassword;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class FacultyAction extends ActionSupport implements ModelDriven<UserProfileTB>{
	
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
	String address=user.getPAddress1();
	String description=user.getAboutInfo();
	private static final long serialVersionUID = 1L;
	//private UserProfileTB faculty = new UserProfileTB();
	private UserProfileTB faculty;
	private List<UserProfileTB> facultyList = new ArrayList<UserProfileTB>();
	private Map<String, String> countryMap = new LinkedHashMap<String, String>();
	private Map<String, String> stateMap = new LinkedHashMap<String, String>();
	private Map<String, String> cityMap = new LinkedHashMap<String, String>();
	private String stateID;
	String Header;

	public String getHeader() {
		return Header;
	}
	public void setHeader(String header) {
		Header = header;
	}

	
	@Override
	public UserProfileTB getModel() {
		return faculty;
	}
	
	public UserProfileTB getFaculty() {
		return faculty;
	}
	public void setFaculty(UserProfileTB faculty) {
		this.faculty = faculty;
	}
	public List<UserProfileTB> getFacultyList() {
		return facultyList;
	}
	public void setFacultyList(List<UserProfileTB> facultyList) {
		this.facultyList = facultyList;
	}
	public String getStateID() {
		return stateID;
	}
	public void setStateID(String stateID) {
		this.stateID = stateID;
	}
	public Map<String, String> getCityMap() {
		return cityMap;
	}
	public void setCityMap(Map<String, String> cityMap) {
		this.cityMap = cityMap;
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

	
	public String saveDescription() {
    System.out.println("saveDescription");
	HttpServletRequest request = ServletActionContext.getRequest();
	 //System.out.println(this.data);
	System.out.println(request.getParameter("description"));
	
	UserProfileTB userProfile=(UserProfileTB)CommonController.getObjectById(user.getUserId(),UserProfileTB.class);
	userProfile.setAboutInfo(request.getParameter("description"));
	userProfile.setPAddress1(request.getParameter("address"));
	CommonController.saveOrUpdateObject(userProfile);
	
	return "success";
}

	private String data;
	
	
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String saveOrUpdateFaculty(){
		
		System.out.println("for edit...");
		
		UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
		if(user!=null){
			
			faculty.setEContact(faculty.getEContact());
			faculty.setEFName(faculty.getEFName());
			faculty.setAcademy(user.getAcademy());
			faculty.setCCity(City.class.cast(CommonController.getObjectById( AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(), AcademyTB.class)).getCity(), City.class)).getCityName());
			//faculty.setCState(StateTB.class.cast(CommonController.getObjectById( AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(), AcademyTB.class)).getState(), StateTB.class)).getStateName());
			CommonController.saveOrUpdateObject(faculty);
			return "success";
		}
		return "";
				
	}
	
	public void populateCountry(){
		List<Class<?>> objects = CommonController.getAllObjects(CountryTB.class, "Status = 1");
		for(int i=0; i<objects.size(); i++){
			CountryTB country = CountryTB.class.cast(objects.get(i));
			countryMap.put(""+country.getCountryID(), country.getCountryName());
		}
	}
	
	public String getAllFaculties(){
		setHeader("header2");
		List<Class<?>> list = new ArrayList<Class<?>>();
		if (user.getUserType() == 1){ // For SuperAdmin Display All Faculties
			list = CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 3");
		} else if(user.getUserType() == 2){ // For Academy Admin Display themself Faculties
			list = CommonController.getAllObjects(UserProfileTB.class, "Status = 1 and UserType = 3 and Academy = " + user.getAcademy().getAcademyId());
		}
		
		for(int i=0; i<list.size(); i++){
			UserProfileTB b = UserProfileTB.class.cast(list.get(i));
			facultyList.add(b);
			System.out.println(i);
		}
		populateCountry();
		populateCities();
		return "success";
	}
	
	public String getFacultyById(){
		
		System.out.println(" Faculty edit.....!!!!!");
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		faculty = UserProfileTB.class.cast(CommonController.getObjectById(Integer.parseInt(request.getParameter("FacultyId")), UserProfileTB.class));
		
		populateCountry();
		populateStates();
		populateCities();
				
		return "success";
	}
	
	public String deleteFaculty(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		CommonController.deleteObject(Integer.parseInt(request.getParameter("FacultyId")), UserProfileTB.class);
		return "success";
	}
	
	public void populateStates() {
		List<Class<?>> objects = CommonController.getAllObjects(StateTB.class, "Status = 1");
		for(int i = 0 ; i < objects.size(); i++){
			StateTB state = StateTB.class.cast(objects.get(i));
			stateMap.put(""+state.getStateid(), state.getStateName());
		}
	}
	
	public void populateCities() {
		List<Class<?>> objects = CommonController.getAllObjects(City.class, "Status = 1"); 
		for(int i = 0 ; i < objects.size(); i++){
			City city = City.class.cast(objects.get(i));
			cityMap.put(""+city.getCityId(), city.getCityName());
		}
	}
}
