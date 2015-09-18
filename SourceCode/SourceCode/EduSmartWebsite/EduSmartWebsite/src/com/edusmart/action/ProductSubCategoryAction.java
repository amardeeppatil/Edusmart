package com.edusmart.action;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.ProductCategoryMasterTB;
import com.edusmart.dao.ProductSubCategoryMasterTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProductSubCategoryAction extends ActionSupport implements  ModelDriven<ProductSubCategoryMasterTB>{

	//Session Object
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));

	private Map<Integer, String> productCategoryMap = new LinkedHashMap<Integer, String>();

	@Override
	public ProductSubCategoryMasterTB getModel() {
		return productSubCategory;
	}

	private static final long serialVersionUID = 5983490543680761888L;
	public List<ProductSubCategoryMasterTB> productSubCategoryList = new ArrayList<ProductSubCategoryMasterTB>();
	public ProductSubCategoryMasterTB productSubCategory = new ProductSubCategoryMasterTB();

	public List<ProductSubCategoryMasterTB> getProductSubCategoryList() {
		return productSubCategoryList;
	}
	public void setProductSubCategoryList(
			List<ProductSubCategoryMasterTB> productSubCategoryList) {
		this.productSubCategoryList = productSubCategoryList;
	}
	public ProductSubCategoryMasterTB getProductSubCategory() {
		return productSubCategory;
	}
	public void setProductSubCategory(ProductSubCategoryMasterTB productSubCategory) {
		this.productSubCategory = productSubCategory;
	}
	public Map<Integer, String> getProductCategoryMap() {
		return productCategoryMap;
	}
	public void setProductCategoryMap(Map<Integer, String> productCategoryMap) {
		this.productCategoryMap = productCategoryMap;
	}

	public String saveOrUpdateProductSubCategory(){
		productSubCategory.setAcademyId(user.getAcademy().getAcademyId());
		productSubCategory.setBranchId(user.getBranchId());
		productSubCategory.setOwnerId(user.getUserId());
		CommonController.saveOrUpdateObject(productSubCategory);
		return "success";
	}

	public String deleteProductSubCategory(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		CommonController.deleteObject(Integer.parseInt(request.getParameter("ProductSubCategoryId")), ProductSubCategoryMasterTB.class);
		return "success";
	}

	public String getProductSubCategoryById(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		productSubCategory = ProductSubCategoryMasterTB.class.cast(CommonController.getObjectById(Integer.parseInt(request.getParameter("ProductSubCategoryId")), ProductSubCategoryMasterTB.class));
		populateCategory();
		return "success";
	}

	public String getAllProductSubCategories(){
		List<Class<?>> list = CommonController.getAllObjects(ProductSubCategoryMasterTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			ProductSubCategoryMasterTB d = ProductSubCategoryMasterTB.class.cast(list.get(i));
			productSubCategoryList.add(d);
		}
		populateCategory();
		return "success";
	}

	public Map<Integer, String> populateCategory(){
		List<Class<?>> list = CommonController.getAllObjects(ProductCategoryMasterTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			ProductCategoryMasterTB product = ProductCategoryMasterTB.class.cast(list.get(i));
			productCategoryMap.put(product.getProductCategoryId(), product.getProductCategoryName());
		}
		return productCategoryMap;
	}

}
