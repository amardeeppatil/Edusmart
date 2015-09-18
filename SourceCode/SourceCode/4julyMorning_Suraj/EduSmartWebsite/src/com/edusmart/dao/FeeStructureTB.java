package com.edusmart.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class FeeStructureTB {
	
	@Id
	@GeneratedValue
	int FeeStuctId;	
	String FeeStructName;
	int Status;
	double FeeAmount;
	double Discount;
	public int getFeeStuctId() {
		return FeeStuctId;
	}
	public void setFeeStuctId(int feeStuctId) {
		FeeStuctId = feeStuctId;
	}
	public String getFeeStructName() {
		return FeeStructName;
	}
	public void setFeeStructName(String feeStructName) {
		FeeStructName = feeStructName;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public double getFeeAmount() {
		return FeeAmount;
	}
	public void setFeeAmount(double feeAmount) {
		FeeAmount = feeAmount;
	}
	public double getDiscount() {
		return Discount;
	}
	public void setDiscount(double discount) {
		Discount = discount;
	}
	
	public FeeStructureTB(int feeStuctId, String feeStructName, int status,
			double feeAmount, double discount) {
		super();
		FeeStuctId = feeStuctId;
		FeeStructName = feeStructName;
		Status = status;
		FeeAmount = feeAmount;
		Discount = discount;
	}
	
	public FeeStructureTB() {
		super();
	}
}
