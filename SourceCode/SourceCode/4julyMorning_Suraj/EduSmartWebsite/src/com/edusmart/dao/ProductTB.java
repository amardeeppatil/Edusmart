package com.edusmart.dao;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import com.edusmart.controller.CommonController;
import com.opensymphony.xwork2.ActionSupport;


/**
 * @author suraj.baraskar
 *
 */
@Entity
public class ProductTB extends ActionSupport{

	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	int ProductId;
	int ProductCategoryId;
	int ProductSubCategoryId;
	String ProductName;	
	int Status;
	
	int BranchId;
	int AcademyId;
	int OwnerId;
	int CourseId;
	int LevelId;
	int SubjectId;
	int CityId;
	int StateId;
	
	String ProductCategoryName;
	String ProductSubCategoryName;
	String BranchName;
	String AcademyName;
	String OwnerName;
	String CourseName;
	String LevelName;
	String SubjectName;
	String CityName;
	String StateName;
	
	int Duration;
	String StartDate;
	String FromTime;
	String ToTime;
	int Capacity;
	double TuitionFee;
	
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public int getProductCategoryId() {
		return ProductCategoryId;
	}
	public void setProductCategoryId(int productCategoryId) {
		ProductCategoryId = productCategoryId;
	}
	public int getProductSubCategoryId() {
		return ProductSubCategoryId;
	}
	public void setProductSubCategoryId(int productSubCategoryId) {
		ProductSubCategoryId = productSubCategoryId;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getBranchId() {
		return BranchId;
	}
	public void setBranchId(int branchId) {
		BranchId = branchId;
	}
	public int getAcademyId() {
		return AcademyId;
	}
	public void setAcademyId(int academyId) {
		AcademyId = academyId;
	}
	public int getOwnerId() {
		return OwnerId;
	}
	public void setOwnerId(int ownerId) {
		OwnerId = ownerId;
	}
	public int getCourseId() {
		return CourseId;
	}
	public void setCourseId(int courseId) {
		CourseId = courseId;
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
	
	public int getCityId() {
		return CityId;
	}
	public void setCityId(int cityId) {
		CityId = cityId;
	}
	public int getStateId() {
		return StateId;
	}
	public void setStateId(int stateId) {
		StateId = stateId;
	}
	public String getCityName() {
		return CityName;
	}
	public void setCityName(String cityName) {
		CityName = cityName;
	}
	public String getStateName() {
		return StateName;
	}
	public void setStateName(String stateName) {
		StateName = stateName;
	}
	public String getBranchName() {
		return BranchName;
	}
	public int getDuration() {
		return Duration;
	}
	public void setDuration(int duration) {
		Duration = duration;
	}
	public String getStartDate() {
		return StartDate;
	}
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}
	public String getFromTime() {
		return FromTime;
	}
	public void setFromTime(String fromTime) {
		FromTime = fromTime;
	}
	public String getToTime() {
		return ToTime;
	}
	public void setToTime(String toTime) {
		ToTime = toTime;
	}
	public int getCapacity() {
		return Capacity;
	}
	public void setCapacity(int capacity) {
		Capacity = capacity;
	}
	public double getTuitionFee() {
		return TuitionFee;
	}
	public void setTuitionFee(double tuitionFee) {
		TuitionFee = tuitionFee;
	}
	public void setBranchName(String branchName) {
		BranchName = branchName;
	}
	public String getAcademyName() {
		return AcademyName;
	}
	public void setAcademyName(String academyName) {
		AcademyName = academyName;
	}
	public String getOwnerName() {
		return OwnerName;
	}
	public void setOwnerName(String ownerName) {
		OwnerName = ownerName;
	}
	public String getCourseName() {
		return CourseName;
	}
	public void setCourseName(String courseName) {
		CourseName = courseName;
	}
	public String getLevelName() {
		return LevelName;
	}
	public void setLevelName(String levelName) {
		LevelName = levelName;
	}
	public String getSubjectName() {
		return SubjectName;
	}
	public void setSubjectName(String subjectName) {
		SubjectName = subjectName;
	}

	public String getProductCategoryName() {
		return ProductCategoryName;
	}
	public void setProductCategoryName(String productCategoryName) {
		ProductCategoryName = productCategoryName;
	}
	public String getProductSubCategoryName() {
		return ProductSubCategoryName;
	}
	public void setProductSubCategoryName(String productSubCategoryName) {
		ProductSubCategoryName = productSubCategoryName;
	}















@Transient
	private Map<Integer, String> productSubCategoryMap = new LinkedHashMap<Integer, String>();
@Transient
private Map<Integer, String> levelMap = new LinkedHashMap<Integer, String>();
@Transient	
private Map<Integer, String> subjectMap = new LinkedHashMap<Integer, String>();

	public Map<Integer, String> getProductSubCategoryMap() {
		return productSubCategoryMap;
	}
	public void setProductSubCategoryMap(Map<Integer, String> productSubCategoryMap) {
		this.productSubCategoryMap = productSubCategoryMap;
	}
	public Map<Integer, String> getLevelMap() {
		return levelMap;
	}
	public void setLevelMap(Map<Integer, String> levelMap) {
		this.levelMap = levelMap;
	}
	public Map<Integer, String> getSubjectMap() {
		return subjectMap;
	}
	public void setSubjectMap(Map<Integer, String> subjectMap) {
		this.subjectMap = subjectMap;
	}

	public String getProductSubCategories(){
		List<Class<?>> list = CommonController.getAllObjectsByQuery("from ProductSubCategoryMasterTB where ProductCategoryId =" + ProductCategoryId );

		for(int i=0; i<list.size(); i++){
			ProductSubCategoryMasterTB product = ProductSubCategoryMasterTB.class.cast(list.get(i));
			productSubCategoryMap.put(product.getProductSubCategoryId(), product.getProductSubCategoryName());
		}
		return "success";
	}

	public String getLevels(){

		List<Class<?>> list = CommonController.getAllObjectsByQuery("from LevelOfStudyTB where CourseID =" + CourseId );

		for(int i=0; i<list.size(); i++){
			LevelOfStudyTB l = LevelOfStudyTB.class.cast(list.get(i));
			levelMap.put(l.getLevelId(), l.getLevelName());
		}
		return "success";
	}

	public String getSubjects(){

		List<Class<?>> list = CommonController.getAllObjectsByQuery("from CourseSubjectTB where LevelId =" + LevelId );

		for(int i=0; i<list.size(); i++){
			CourseSubjectTB cs = CourseSubjectTB.class.cast(list.get(i));
			subjectMap.put(cs.getSubjectId(), cs.getSubjectName());
		}
		return "success";
	}
}
