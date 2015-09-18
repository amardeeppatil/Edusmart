package com.edusmartweb.edusmart.model;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.edusmartweb.edusmart.dao.CommonController;

@Entity
public class EnquiryTB {
	
	//private static final long serialVersionUID = -7568635131980413814L;

	@Id
	@GeneratedValue
	int EnquiryID;
	int EnquiryNo;
	String EnquiryDate;
	int EnquiryStatus;
	int BranchID;	
	int CourseID;
	int CourseLevelID;
	int CoachingModeID;	
	int BatchID;	
	String FirstName;
	String MiddleName;	
	String LastName;
	String EmailID;	
	String DOB;
	int ContactNo;	
	String Street2;	
	String Street1;	
	int CityID;	
	int StateID;
	int CountryID;
	int PINCode;
	int HowComeToKnow;	
	String Qualification;	
	int ExpectedExamTimeID;
	String BestTimeToCall;
	int CounselorID;
	String Status;
	List<Enquiry_Subject_TB> enquirySubjects;
	String[] SubjectIDs;
	
	
	// For Inquiry Follow Up
	int Id;
	String CallStatus;
	String FollowUpDate;
	String TodaysDay;
	String Note;
	int FolUpStatus;
	int Enquiryid;
	String ISPOTENTIAL;
	
	public int getEnquiryID() {
		return EnquiryID;
	}
	public void setEnquiryID(int enquiryID) {
		EnquiryID = enquiryID;
	}
	public int getEnquiryNo() {
		return EnquiryNo;
	}
	public void setEnquiryNo(int enquiryNo) {
		EnquiryNo = enquiryNo;
	}
	public String getEnquiryDate() {
		return EnquiryDate;
	}
	public void setEnquiryDate(String enquiryDate) {
		EnquiryDate = enquiryDate;
	}
	public int getEnquiryStatus() {
		return EnquiryStatus;
	}
	public void setEnquiryStatus(int enquiryStatus) {
		EnquiryStatus = enquiryStatus;
	}
	public int getBranchID() {
		return BranchID;
	}
	public void setBranchID(int branchID) {
		BranchID = branchID;
	}
	public int getCourseID() {
		return CourseID;
	}
	public void setCourseID(int courseID) {
		CourseID = courseID;
	}
	public int getCourseLevelID() {
		return CourseLevelID;
	}
	public void setCourseLevelID(int courseLevelID) {
		CourseLevelID = courseLevelID;
	}
	public int getCoachingModeID() {
		return CoachingModeID;
	}
	public void setCoachingModeID(int coachingModeID) {
		CoachingModeID = coachingModeID;
	}
	public int getBatchID() {
		return BatchID;
	}
	public void setBatchID(int batchID) {
		BatchID = batchID;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getMiddleName() {
		return MiddleName;
	}
	public void setMiddleName(String middleName) {
		MiddleName = middleName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getEmailID() {
		return EmailID;
	}
	public void setEmailID(String emailID) {
		EmailID = emailID;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public int getContactNo() {
		return ContactNo;
	}
	public void setContactNo(int contactNo) {
		ContactNo = contactNo;
	}
	public String getStreet2() {
		return Street2;
	}
	public void setStreet2(String street2) {
		Street2 = street2;
	}
	public String getStreet1() {
		return Street1;
	}
	public void setStreet1(String street1) {
		Street1 = street1;
	}
	public int getCityID() {
		return CityID;
	}
	public void setCityID(int cityID) {
		CityID = cityID;
	}
	public int getStateID() {
		return StateID;
	}
	public void setStateID(int stateID) {
		StateID = stateID;
	}
	public int getCountryID() {
		return CountryID;
	}
	public void setCountryID(int countryID) {
		CountryID = countryID;
	}
	public int getPINCode() {
		return PINCode;
	}
	public void setPINCode(int pINCode) {
		PINCode = pINCode;
	}
	public int getHowComeToKnow() {
		return HowComeToKnow;
	}
	public void setHowComeToKnow(int howComeToKnow) {
		HowComeToKnow = howComeToKnow;
	}
	public String getQualification() {
		return Qualification;
	}
	public void setQualification(String qualification) {
		Qualification = qualification;
	}
	public int getExpectedExamTimeID() {
		return ExpectedExamTimeID;
	}
	public void setExpectedExamTimeID(int expectedExamTimeID) {
		ExpectedExamTimeID = expectedExamTimeID;
	}
	public String getBestTimeToCall() {
		return BestTimeToCall;
	}
	public void setBestTimeToCall(String bestTimeToCall) {
		BestTimeToCall = bestTimeToCall;
	}
	public int getCounselorID() {
		return CounselorID;
	}
	public void setCounselorID(int counselorID) {
		CounselorID = counselorID;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public List<Enquiry_Subject_TB> getEnquirySubjects() {
		return enquirySubjects;
	}
	public void setEnquirySubjects(List<Enquiry_Subject_TB> enquirySubjects) {
		this.enquirySubjects = enquirySubjects;
	}
	public String[] getSubjectIDs() {
		return SubjectIDs;
	}
	public void setSubjectIDs(String[] subjectIDs) {
		SubjectIDs = subjectIDs;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getCallStatus() {
		return CallStatus;
	}
	public void setCallStatus(String callStatus) {
		CallStatus = callStatus;
	}
	public String getFollowUpDate() {
		return FollowUpDate;
	}
	public void setFollowUpDate(String followUpDate) {
		FollowUpDate = followUpDate;
	}
	public String getTodaysDay() {
		return TodaysDay;
	}
	public void setTodaysDay(String todaysDay) {
		TodaysDay = todaysDay;
	}
	public String getNote() {
		return Note;
	}
	public void setNote(String note) {
		Note = note;
	}
	public int getFolUpStatus() {
		return FolUpStatus;
	}
	public void setFolUpStatus(int folUpStatus) {
		FolUpStatus = folUpStatus;
	}
	public int getEnquiryid() {
		return Enquiryid;
	}
	public void setEnquiryid(int enquiryid) {
		Enquiryid = enquiryid;
	}
	public String getISPOTENTIAL() {
		return ISPOTENTIAL;
	}
	public void setISPOTENTIAL(String iSPOTENTIAL) {
		ISPOTENTIAL = iSPOTENTIAL;
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
