package com.edusmart.dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.edusmart.controller.CommonController;
import com.opensymphony.xwork2.ActionSupport;
@Entity
public class AdmissionTB extends ActionSupport{
	
//	private static final long serialVersionUID = 4829589526037883421L;
	
	@Id
	@GeneratedValue
	int AdmissionId;
	int StudentID;
	int CourseId;
	int LevelId;
	int SubjectId;
	int FacultyId;
	int FacultySubjectId;
	int AdmissionBy;
	String AdmissionDate;
	String Status;
	int Branchid;
	int EnquiryId;
	String[] SubjectIDs;
	
	public int getAdmissionId() {
		return AdmissionId;
	}
	public void setAdmissionId(int admissionId) {
		AdmissionId = admissionId;
	}
	public int getStudentID() {
		return StudentID;
	}
	public void setStudentID(int studentID) {
		StudentID = studentID;
	}
	public int getCourseId() {
		return CourseId;
	}
	public void setCourseId(int courseId) {
		CourseId = courseId;
	}
	public int getAdmissionBy() {
		return AdmissionBy;
	}
	public void setAdmissionBy(int admissionBy) {
		AdmissionBy = admissionBy;
	}
	public String getAdmissionDate() {
		return AdmissionDate;
	}
	public void setAdmissionDate(String admissionDate) {
		AdmissionDate = admissionDate;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public int getBranchid() {
		return Branchid;
	}
	public void setBranchid(int branchid) {
		Branchid = branchid;
	}
	public int getEnquiryId() {
		return EnquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		EnquiryId = enquiryId;
	}
	public String[] getSubjectIDs() {
		return SubjectIDs;
	}
	public void setSubjectIDs(String[] subjectIDs) {
		SubjectIDs = subjectIDs;
	}
	public int getLevelId() {
		return LevelId;
	}
	public void setLevelId(int levelId) {
		LevelId = levelId;
	}
	public int getSubjectId() {
		return SubjectId;
	}
	public void setSubjectId(int subjectId) {
		SubjectId = subjectId;
	}
	public int getFacultyId() {
		return FacultyId;
	}
	public void setFacultyId(int facultyId) {
		FacultyId = facultyId;
	}
	public int getFacultySubjectId() {
		return FacultySubjectId;
	}
	public void setFacultySubjectId(int facultySubjectId) {
		FacultySubjectId = facultySubjectId;
	}
	
	public AdmissionTB() {
		super();
	}
	
	public AdmissionTB(int studentID, int courseId, int levelId, int subjectId,
			int facultyId, int facultySubjectId, int admissionBy,
			String admissionDate, String status, int branchid, int enquiryId) {
		super();
		StudentID = studentID;
		CourseId = courseId;
		LevelId = levelId;
		SubjectId = subjectId;
		FacultyId = facultyId;
		FacultySubjectId = facultySubjectId;
		AdmissionBy = admissionBy;
		AdmissionDate = admissionDate;
		Status = status;
		Branchid = branchid;
		EnquiryId = enquiryId;
	}

	private Map<Integer, String> coachingModeMap = new LinkedHashMap<Integer, String>();
	public Map<Integer, String> getCoachingModeMap() {
		return coachingModeMap;
	}
	public void setCoachingModeMap(Map<Integer, String> coachingModeMap) {
		this.coachingModeMap = coachingModeMap;
	}
	
	public String getCoachingModes(){
		populateCoachingModes();
		return "success";
	}

	public void populateCoachingModes(){
		String _subjectIDs = "";
		System.out.println(getSubjectIDs());
		for(String subjectId : getSubjectIDs()){
			_subjectIDs = subjectId + "," + _subjectIDs;
		}
		if(!"".equals(_subjectIDs)){
			List<Class<?>> list = CommonController.getAllObjectsByQuery("select m from CourseSubjectTB c left join "
									+ "c.mode m where c.mode = m and c.SubjectId in(" + 
									_subjectIDs.substring(0, _subjectIDs.length() - 1) + ")");
			
//			List<Class<?>> list = CommonController.getAllObjectsByQuery("select e from EnquiryAssignedTB ea left join "
//					+ "ea.enquiry e where ea.enquiry = e and ea.EmpId = 1");
			
			for(int i=0; i<list.size(); i++){
				ModeOfCoachingTB coachingMode = ModeOfCoachingTB.class.cast(list.get(i));
				coachingModeMap.put(coachingMode.getModeId(), coachingMode.getModeName());
			}
		}
	}
}
