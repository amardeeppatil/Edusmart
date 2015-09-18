package com.edusmartweb.edusmart.model;

/**
 * @author suraj.baraskar
 *
 */
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class ProductSubCategoryMasterTB {

	@Id
	@GeneratedValue
	int ProductSubCategoryId;
	int ProductCategoryId;
	String ProductSubCategoryName;	
	int Status;
	int BranchId;
	int AcademyId;
	int OwnerId;
	
	public int getProductSubCategoryId() {
		return ProductSubCategoryId;
	}
	public void setProductSubCategoryId(int productSubCategoryId) {
		ProductSubCategoryId = productSubCategoryId;
	}
	public int getProductCategoryId() {
		return ProductCategoryId;
	}
	public void setProductCategoryId(int productCategoryId) {
		ProductCategoryId = productCategoryId;
	}
	public String getProductSubCategoryName() {
		return ProductSubCategoryName;
	}
	public void setProductSubCategoryName(String productSubCategoryName) {
		ProductSubCategoryName = productSubCategoryName;
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
