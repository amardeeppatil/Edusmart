package com.edusmart.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.ProductCategoryMasterTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProductCategoryAction extends ActionSupport implements ModelDriven<ProductCategoryMasterTB> {

	//Session Object
	UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));

	@Override
	public ProductCategoryMasterTB getModel() {
		return productCategory;
	}

	private static final long serialVersionUID = 5983490543680761888L;
	public List<ProductCategoryMasterTB> productCategoryList = new ArrayList<ProductCategoryMasterTB>();
	public ProductCategoryMasterTB productCategory = new ProductCategoryMasterTB();

	public List<ProductCategoryMasterTB> getProductList() {
		return productCategoryList;
	}
	public void setProductList(List<ProductCategoryMasterTB> productList) {
		this.productCategoryList = productList;
	}
	public ProductCategoryMasterTB getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(ProductCategoryMasterTB productCategory) {
		this.productCategory = productCategory;
	}


	public List<ProductCategoryMasterTB> getProductCategoryList() {
		return productCategoryList;
	}
	public void setProductCategoryList(
			List<ProductCategoryMasterTB> productCategoryList) {
		this.productCategoryList = productCategoryList;
	}
	public String saveOrUpdateProductCategory(){
		productCategory.setAcademyId(user.getAcademy().getAcademyId());
		productCategory.setBranchId(user.getBranchId());
		productCategory.setOwnerId(user.getUserId());
		CommonController.saveOrUpdateObject(productCategory);
		return "success";
	}

	public String deleteProductCategory(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		CommonController.deleteObject(Integer.parseInt(request.getParameter("ProductCategoryId")), ProductCategoryMasterTB.class);
		return "success";
	}

	public String getProductCategoryById(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		productCategory = ProductCategoryMasterTB.class.cast(
				CommonController.getObjectById(Integer.parseInt(request.getParameter("ProductCategoryId")), ProductCategoryMasterTB.class));		
		return "success";
	}

	public String getAllProductCategories(){
		List<Class<?>> list = CommonController.getAllObjects(ProductCategoryMasterTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			ProductCategoryMasterTB d = ProductCategoryMasterTB.class.cast(list.get(i));
			productCategoryList.add(d);
		}
		return "success";
	}
}