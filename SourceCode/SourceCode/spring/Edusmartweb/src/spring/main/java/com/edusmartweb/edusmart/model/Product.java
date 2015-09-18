package com.edusmartweb.edusmart.model;

import java.io.File;

import javax.annotation.Nullable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Product {
	
	@Id
	@GeneratedValue
	private int productId;
	private int combineProductId;
	@ManyToOne
	private CourseTB courseTB;
	private String level;
	@OneToOne
	private SubjectLevelTB subjectLevelTB;
	private String topic;
	private String typeOfBatch;
	@Nullable
	private String numberOfLectures;
	private double fees;
	private String endDate;
	private String productDescription;
	@Nullable
	private int days;
	private String batchTiming;
	@Nullable
	private int capacity;
	private String notify;
	private String image;
	@Lob
	private File[] uploadSyllabus;
	private String attemptFrom;
	private String attemptTo;
	
		
	public Product() {
		super();
		
	}


	

	public Product(int productId, int combineProductId, CourseTB courseTB,
			String level, SubjectLevelTB subjectLevelTB, String topic,
			String typeOfBatch, String numberOfLectures, double fees,
			String endDate, String productDescription, int days,
			String batchTiming, int capacity, String notify, String image,
			File[] uploadSyllabus, String attemptFrom, String attemptTo) {
		super();
		this.productId = productId;
		this.combineProductId = combineProductId;
		this.courseTB = courseTB;
		this.level = level;
		this.subjectLevelTB = subjectLevelTB;
		this.topic = topic;
		this.typeOfBatch = typeOfBatch;
		this.numberOfLectures = numberOfLectures;
		this.fees = fees;
		this.endDate = endDate;
		this.productDescription = productDescription;
		this.days = days;
		this.batchTiming = batchTiming;
		this.capacity = capacity;
		this.notify = notify;
		this.image = image;
		this.uploadSyllabus = uploadSyllabus;
		this.attemptFrom = attemptFrom;
		this.attemptTo = attemptTo;
	}




	public int getCombineProductId() {
		return combineProductId;
	}




	public void setCombineProductId(int combineProductId) {
		this.combineProductId = combineProductId;
	}




	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
	}


	public CourseTB getCourseTB() {
		return courseTB;
	}


	public void setCourseTB(CourseTB courseTB) {
		this.courseTB = courseTB;
	}


	public String getLevel() {
		return level;
	}


	public void setLevel(String level) {
		this.level = level;
	}


	public SubjectLevelTB getSubjectLevelTB() {
		return subjectLevelTB;
	}


	public void setSubjectLevelTB(SubjectLevelTB subjectLevelTB) {
		this.subjectLevelTB = subjectLevelTB;
	}


	public String getTopic() {
		return topic;
	}


	public void setTopic(String topic) {
		this.topic = topic;
	}


	public String getTypeOfBatch() {
		return typeOfBatch;
	}


	public void setTypeOfBatch(String typeOfBatch) {
		this.typeOfBatch = typeOfBatch;
	}


	public String getNumberOfLectures() {
		return numberOfLectures;
	}


	public void setNumberOfLectures(String numberOfLectures) {
		this.numberOfLectures = numberOfLectures;
	}


	public double getFees() {
		return fees;
	}


	public void setFees(double fees) {
		this.fees = fees;
	}


	public String getEndDate() {
		return endDate;
	}


	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}


	public String getProductDescription() {
		return productDescription;
	}


	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}


	public int getDays() {
		return days;
	}


	public void setDays(int days) {
		this.days = days;
	}


	public String getBatchTiming() {
		return batchTiming;
	}


	public void setBatchTiming(String batchTiming) {
		this.batchTiming = batchTiming;
	}


	public int getCapacity() {
		return capacity;
	}


	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}


	public String getNotify() {
		return notify;
	}


	public void setNotify(String notify) {
		this.notify = notify;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public File[] getUploadSyllabus() {
		return uploadSyllabus;
	}


	public void setUploadSyllabus(File[] uploadSyllabus) {
		this.uploadSyllabus = uploadSyllabus;
	}


	public String getAttemptFrom() {
		return attemptFrom;
	}


	public void setAttemptFrom(String attemptFrom) {
		this.attemptFrom = attemptFrom;
	}


	public String getAttemptTo() {
		return attemptTo;
	}


	public void setAttemptTo(String attemptTo) {
		this.attemptTo = attemptTo;
	}

	
	
	
	

}
