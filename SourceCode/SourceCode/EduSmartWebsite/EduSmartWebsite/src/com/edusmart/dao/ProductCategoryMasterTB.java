package com.edusmart.dao;

public class ProductCategoryMasterTB {
	
	int ProductCategoryId;
	String ProductCategoryName;	
	int Status;
	int BranchId;
	int AcademyId;
	int OwnerId;
	
	public int getProductCategoryId() {
		return ProductCategoryId;
	}
	public void setProductCategoryId(int productCategoryId) {
		ProductCategoryId = productCategoryId;
	}
	public String getProductCategoryName() {
		return ProductCategoryName;
	}
	public void setProductCategoryName(String productCategoryName) {
		ProductCategoryName = productCategoryName;
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
}
