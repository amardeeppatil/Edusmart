package com.edusmart.action;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.BatchMasterTB;
import com.edusmart.dao.BranchTB;
import com.edusmart.dao.City;
import com.edusmart.dao.CountryTB;
import com.edusmart.dao.CourseSubjectTB;
import com.edusmart.dao.CourseTB;
import com.edusmart.dao.FacultySubjectTB;
import com.edusmart.dao.LevelOfStudyTB;
import com.edusmart.dao.ModeOfCoachingTB;
import com.edusmart.dao.StateTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionSupport;

public class CommonAction extends ActionSupport{

	private static final long serialVersionUID = 8085145911463904192L;
	private Map<Integer, String> countryMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> stateMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> cityMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> courseMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> courseLevelMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> courseSubjectMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> batchMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> branchMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> coachingModeMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> facultyMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> facultySubjectMap = new LinkedHashMap<Integer, String>();
	private String courseId, courseLevelId, batchId, branchId, subjectId, SubjectIDs, cochingModeId, facultyId;

	public Map<Integer, String> getFacultySubjectMap() {
		return facultySubjectMap;
	}
	public void setFacultySubjectMap(Map<Integer, String> facultySubjectMap) {
		this.facultySubjectMap = facultySubjectMap;
	}
	public String getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(String facultyId) {
		this.facultyId = facultyId;
	}
	public Map<Integer, String> getFacultyMap() {
		return facultyMap;
	}
	public void setFacultyMap(Map<Integer, String> facultyMap) {
		this.facultyMap = facultyMap;
	}
	public String getSubjectIDs() {
		return SubjectIDs;
	}
	public void setSubjectIDs(String subjectIDs) {
		SubjectIDs = subjectIDs;
	}
	public Map<Integer, String> getCityMap() {
		return cityMap;
	}
	public void setCityMap(Map<Integer, String> cityMap) {
		this.cityMap = cityMap;
	}
	public Map<Integer, String> getCoachingModeMap() {
		return coachingModeMap;
	}
	public void setCoachingModeMap(Map<Integer, String> coachingModeMap) {
		this.coachingModeMap = coachingModeMap;
	}
	public String getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(String subjectId) {
		this.subjectId = subjectId;
	}
	public Map<Integer, String> getCourseMap() {
		return courseMap;
	}
	public void setCourseMap(Map<Integer, String> courseMap) {
		this.courseMap = courseMap;
	}
	public String getBranchId() {
		return branchId;
	}
	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	public Map<Integer, String> getBatchMap() {
		return batchMap;
	}
	public void setBatchMap(Map<Integer, String> batchMap) {
		this.batchMap = batchMap;
	}
	public String getCourseLevelId() {
		return courseLevelId;
	}
	public void setCourseLevelId(String courseLevelId) {
		this.courseLevelId = courseLevelId;
	}
	public String getCourseId() {
		return courseId;
	}
	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}
	public Map<Integer, String> getCourseSubjectMap() {
		return courseSubjectMap;
	}
	public void setCourseSubjectMap(Map<Integer, String> courseSubjectMap) {
		this.courseSubjectMap = courseSubjectMap;
	}
	public Map<Integer, String> getCourseLevelMap() {
		return courseLevelMap;
	}
	public void setCourseLevelMap(Map<Integer, String> courseLevelMap) {
		this.courseLevelMap = courseLevelMap;
	}
	public Map<Integer, String> getBranchMap() {
		return branchMap;
	}
	public void setBranchMap(Map<Integer, String> branchMap) {
		this.branchMap = branchMap;
	}
	public String getBatchId() {
		return batchId;
	}
	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	public String getCochingModeId() {
		return cochingModeId;
	}
	public void setCochingModeId(String cochingModeId) {
		this.cochingModeId = cochingModeId;
	}
	public String getCountries(){
		populateCountry();
		return "success";
	}

	public Map<Integer, String> populateCountry(){
		List<Class<?>> list = CommonController.getAllObjects(CountryTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			CountryTB country = CountryTB.class.cast(list.get(i));
			countryMap.put(country.getCountryID(), country.getCountryName());
		}
		return countryMap;
	}

	public Map<Integer, String> populateStates(String countryId) {
		List<Class<?>> list;
		if(countryId != null){
			list = CommonController.getAllObjects(StateTB.class, "Status = 1 and CountryId = " + Integer.parseInt(countryId));
		} else {
			list = CommonController.getAllObjects(StateTB.class, "Status = 1"); 
		}
		
		for(int i=0; i<list.size(); i++){
			StateTB state = StateTB.class.cast(list.get(i));
			stateMap.put(state.getStateid(), state.getStateName());
		}
		return stateMap;
	}

	public Map<Integer, String> populateCities(String stateId) {
		List<Class<?>> list;
		if(stateId != null){
			list = CommonController.getAllObjects(City.class, "Status = 1 and StateId = " + Integer.parseInt(stateId));
		} else {
			list = CommonController.getAllObjects(City.class, "Status = 1"); 
		}
		
		for(int i=0; i<list.size(); i++){
			City city = City.class.cast(list.get(i));
			cityMap.put(city.getCityId(), city.getCityName());
		}
		return cityMap;
	}

	public String getCourses(){
		populateCourses(branchId);
		return "success";
	}

	public Map<Integer, String> populateCourses(String branchId){
		List<Class<?>> list = null;
		if(branchId != null){
			list = CommonController.getAllObjects(CourseTB.class, "Status = 1 and BranchId = " + branchId);
		} else {
			list = CommonController.getAllObjects(CourseTB.class, "Status = 1");
		}
		for(int i=0; i<list.size(); i++){
			CourseTB course = CourseTB.class.cast(list.get(i));
			courseMap.put(course.getCourseID(), course.getCourseName());
		}
		return courseMap;
	}

	public String getCourseLevels(){
		populateCourseLevels(courseId);
		return "success";
	}

	public Map<Integer, String> populateCourseLevels(String courseId){
		List<Class<?>> list;
		if(courseId != null){
			list = CommonController.getAllObjects(LevelOfStudyTB.class, "CourseID = " + courseId);
		} else {
			list = CommonController.getAllObjects(LevelOfStudyTB.class, null);
		}

		for(int i=0; i<list.size(); i++){
			LevelOfStudyTB courseLevel = LevelOfStudyTB.class.cast(list.get(i));
			courseLevelMap.put(courseLevel.getLevelId(), courseLevel.getLevelName());
		} 
		return courseLevelMap;
	}

	public String getCourseSubjects(){
		populateCourseSubjects(courseLevelId);
		return "success";
	}

	public String getCourseSubjectsFc(){
		populateCourseSubjectsFc(courseLevelId);
		return "success";
	}

	public Map<Integer, String> populateCourseSubjects(String courseLevelId){
		List<Class<?>> list;
		if(courseLevelId != null){
			list = CommonController.getAllObjects(FacultySubjectTB.class, "LevelId = " + courseLevelId + " and ApprovalStatus not in('0')");
		} else {
			list = CommonController.getAllObjects(FacultySubjectTB.class, null);
		}

		for(int i=0; i<list.size(); i++){
			FacultySubjectTB facultySubject = FacultySubjectTB.class.cast(list.get(i));
			CourseSubjectTB subject = CourseSubjectTB.class.cast(CommonController.getObjectById(facultySubject.getSubjectId(), CourseSubjectTB.class));
			courseSubjectMap.put(facultySubject.getSubjectId(), subject.getSubjectName());
		}
		return courseSubjectMap;
	}

	public Map<Integer, String> populateCourseSubjectsFc(String courseLevelId){
		List<Class<?>> list;
		if(courseLevelId != null){
			list = CommonController.getAllObjects(CourseSubjectTB.class, "LevelId = " + courseLevelId);
		} else {
			list = CommonController.getAllObjects(CourseSubjectTB.class, null);
		}

		for(int i=0; i<list.size(); i++){
			CourseSubjectTB courseSubject = CourseSubjectTB.class.cast(list.get(i));
			courseSubjectMap.put(courseSubject.getSubjectId(), courseSubject.getSubjectName());
		}
		return courseSubjectMap;
	}

	public String getFaculties(){
		populateFaculties();
		return "success";
	}

	public Map<Integer, String> populateFaculties(){
		List<Class<?>> list, list2;
		if(subjectId != null){
			list = CommonController.getAllObjectsByQuery("select f from FacultySubjectTB fs left join fs.faculty f "
					+ "where fs.faculty = f and fs.SubjectId = " + subjectId);
		} else {
			list = CommonController.getAllObjects(UserProfileTB.class, null);
		}

		for(int i=0; i<list.size(); i++){
			UserProfileTB faculty = UserProfileTB.class.cast(list.get(i));
			if(subjectId != null){
				list2 = CommonController.getObjectByQuery("select fs from "
						+ "FacultySubjectTB fs where fs.SubjectId = " + subjectId + " and fs.faculty = (select f from UserProfileTB f "
						+ "where f.FacultyId = " + faculty.getUserId() + ")");
				FacultySubjectTB subject = FacultySubjectTB.class.cast(list2.get(0));
				facultyMap.put(faculty.getUserId(), faculty.getFName() + " " + faculty.getLName() + 
						" - Rs. " + subject.getTuitionFee());
			}
		}
		return facultyMap;
	}

	public String getFacultySubjects(){
		populateFacultySubjects();
		return "success";
	}

	public Map<Integer, String> populateFacultySubjects(){
		List<Class<?>> list = null;
		if(subjectId != null && facultyId != null){
			list = CommonController.getAllObjects(FacultySubjectTB.class, "SubjectId = " + subjectId + " and faculty = " + facultyId);
		}

		if(list != null){
			for(int i=0; i<list.size(); i++){
				FacultySubjectTB facultySubject = FacultySubjectTB.class.cast(list.get(i));
				if(subjectId != null){
					facultySubjectMap.put(facultySubject.getFacultySubjectId(), 
								facultySubject.getFromDate() + "  to  " + facultySubject.getToDate() +
								" ( " + facultySubject.getFromTime() + " to " + facultySubject.getToTime() + ")");
				}
			}
		}
		return facultySubjectMap;
	}

	public String getCoachingModes(){
		populateCochingModes(subjectId);
		return "success";
	}

	public Map<Integer, String> populateCochingModes(String subjectId){
		List<Class<?>> list;
		if(subjectId != null){
			list = CommonController.getAllObjectsByQuery("select m from CourseSubjectTB c left join "
					+ "c.mode m where c.mode = m and c.SubjectId in(" + subjectId + ")");
		} else {
			list = CommonController.getAllObjects(ModeOfCoachingTB.class, null);
		}

		for(int i=0; i<list.size(); i++){
			ModeOfCoachingTB coachingMode = ModeOfCoachingTB.class.cast(list.get(i));
			coachingModeMap.put(coachingMode.getModeId(), coachingMode.getModeName());
		}
		return coachingModeMap;	
	}

	public Map<Integer, String> populateBatches(){
		List<Class<?>> list = CommonController.getAllObjects(BatchMasterTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			BatchMasterTB batch = BatchMasterTB.class.cast(list.get(i));
			batchMap.put(batch.getBatchId(), batch.getBatchName());
		}
		return batchMap;
	}

	public String getBranches(){
		populateBranches();
		return "success";
	}

	public Map<Integer, String> populateBranches(){
		//		List<Class<?>> list = CommonController.getAllObjects("from BranchTB BR,BatchMasterTB BM where BM.BatchId = BR.BranchId and BM.BatchId = " + batchId);
		List<Class<?>> list = CommonController.getAllObjects(BranchTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			BranchTB branch = BranchTB.class.cast(list.get(i));
			branchMap.put(branch.getBranchId(), branch.getBranchname());
		}
		return branchMap;
	}

}
