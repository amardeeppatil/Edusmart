package com.edusmart.action;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.AcademyTB;
import com.edusmart.dao.BranchTB;
import com.edusmart.dao.City;
import com.edusmart.dao.CourseSubjectTB;
import com.edusmart.dao.CourseTB;
import com.edusmart.dao.LevelOfStudyTB;
import com.edusmart.dao.ProductCategoryMasterTB;
import com.edusmart.dao.ProductSubCategoryMasterTB;
import com.edusmart.dao.ProductTB;
import com.edusmart.dao.StateTB;
import com.edusmart.dao.UserProfileTB;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * @author ajinkya.marathe
 *
 */
public class ProductAction extends ActionSupport implements ModelDriven<ProductTB> {

	@Override
	public ProductTB getModel() {
		return product;
	}

	String Header;

	public String getHeader() {
		return Header;
	}
	public void setHeader(String header) {
		Header = header;
	}

	private static final long serialVersionUID = 5983490543680761888L;
	public List<ProductTB> productList = new ArrayList<ProductTB>();
	public ProductTB product= new ProductTB();
	private Map<Integer, String> courseOfStudyMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> productSubCategoryMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> levelMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> subjectMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> productCategoryMap = new LinkedHashMap<Integer, String>();
	private Map<Integer, String> branchMap = new LinkedHashMap<Integer, String>();


	public List<ProductTB> getProductList() {
		return productList;
	}
	public void setProductList(List<ProductTB> productList) {
		this.productList = productList;
	}
	public ProductTB getProduct() {
		return product;
	}
	public void setProduct(ProductTB product) {
		this.product = product;
	}
	public Map<Integer, String> getProductCategoryMap() {
		return productCategoryMap;
	}
	public void setProductCategoryMap(Map<Integer, String> productCategoryMap) {
		this.productCategoryMap = productCategoryMap;
	}
	public Map<Integer, String> getCourseOfStudyMap() {
		return courseOfStudyMap;
	}
	public void setCourseOfStudyMap(Map<Integer, String> courseOfStudyMap) {
		this.courseOfStudyMap = courseOfStudyMap;
	}
	public Map<Integer, String> getProductSubCategoryMap() {
		return productSubCategoryMap;
	}
	public void setProductSubCategoryMap(Map<Integer, String> productSubCategoryMap) {
		this.productSubCategoryMap = productSubCategoryMap;
	}
	public Map<Integer, String> getBranchMap() {
		return branchMap;
	}
	public void setBranchMap(Map<Integer, String> branchMap) {
		this.branchMap = branchMap;
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

	public String saveOrUpdateProduct(){
		//Session Object
		UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
		if(user!=null){
			populateCategory();
			populateCourseOfStudy();
			getProductSubCategories();
			getLevels();
			getSubjects();
			populateBranch();

			product.setProductCategoryName((String)productCategoryMap.get(product.getProductCategoryId()));
			product.setProductSubCategoryName((String)productSubCategoryMap.get(product.getProductSubCategoryId()));
			product.setBranchName((String)branchMap.get(product.getBranchId()));
			product.setAcademyName(AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(), AcademyTB.class)).getAcademyName());
			product.setOwnerName(user.getUserName());
			product.setCourseName((String)courseOfStudyMap.get(product.getCourseId()));
			product.setLevelName((String)levelMap.get(product.getLevelId()));
			product.setSubjectName((String)subjectMap.get(product.getSubjectId()));
			product.setCityName(City.class.cast(CommonController.getObjectById( AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(), AcademyTB.class)).getCity(), City.class)).getCityName());
			product.setStateName(StateTB.class.cast(CommonController.getObjectById( AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(), AcademyTB.class)).getState(), StateTB.class)).getStateName());
			CommonController.saveOrUpdateObject(product);
			return "success";
		}
		return "";
	}

	public String deleteProduct(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		CommonController.deleteObject(Integer.parseInt(request.getParameter("ProductId")), ProductTB.class);
		return "success";
	}

	public String getProductById(){
		populateCategory();
		populateCourseOfStudy();
		populateCategory();
		populateCourseOfStudy();
		getProductSubCategories();
		getLevels();
		getSubjects();
		populateBranch();

		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		product = ProductTB.class.cast(
				CommonController.getObjectById(Integer.parseInt(request.getParameter("ProductId")), ProductTB.class));
		product.setProductCategoryId(getKeysByValue(productCategoryMap, product.getProductCategoryName()));
		product.setProductSubCategoryId(getKeysByValue(productSubCategoryMap, product.getProductSubCategoryName()));
		product.setCourseId(getKeysByValue(courseOfStudyMap, product.getCourseName()));
		product.setLevelId(getKeysByValue(levelMap, product.getLevelName()));
		product.setSubjectId(getKeysByValue(subjectMap, product.getSubjectName()));;
		return "success";
	}

	public int getKeysByValue(Map<Integer, String> map, String value) {
		for (Entry<Integer, String> entry : map.entrySet()) {
			if (value.equals(entry.getValue())) {
				return entry.getKey();
			}
		}
		return 0;
	}



	public String getAllProducts(){
		setHeader("header2");
		//Session Object
		UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
		List<Class<?>> list = new ArrayList<Class<?>>();
		if( user==null){ // For SuperAdmin Display All & all users
			list = CommonController.getAllObjects(ProductTB.class, "Status = 1");
		} else if(user!=null && user.getUserType() == 1){
			list = CommonController.getAllObjects(ProductTB.class, "Status = 1");
		} else if(user!=null && user.getUserType() == 2){ // For Academy Admin Display themself
			list = CommonController.getAllObjects(ProductTB.class, "Status = 1 and AcademyName = '" + AcademyTB.class.cast(CommonController.getObjectById(user.getAcademy().getAcademyId(), AcademyTB.class)).getAcademyName() + "'");
		} else if(user!=null && user.getUserType() == 3){ // For Academy Faculty Display themself
			list = CommonController.getAllObjects(ProductTB.class, "Status = 1 and OwnerName = '" + user.getUserName() + "'");
		}
		for(int i=0; i<list.size(); i++){
			ProductTB d = ProductTB.class.cast(list.get(i));
			productList.add(d);
		}
		populateCategory();
		populateCourseOfStudy();
		populateCategory();
		populateCourseOfStudy();
		getProductSubCategories();
		getLevels();
		getSubjects();
		populateBranch();
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

	public Map<Integer, String> populateBranch(){
		List<Class<?>> list = new ArrayList<Class<?>>();
		//Session Object
		UserProfileTB user = UserProfileTB.class.cast(ServletActionContext.getRequest().getSession().getAttribute("USER"));
		if(user!=null){
			list = CommonController.getAllObjects(BranchTB.class, "Status = 1 and AcademyId = " + user.getAcademy().getAcademyId());
		} else{
			list = CommonController.getAllObjects(BranchTB.class, "Status = 1");
		}
		for(int i=0; i<list.size(); i++){
			BranchTB b = BranchTB.class.cast(list.get(i));
			branchMap.put(b.getBranchId(), b.getBranchname());
		}
		return branchMap;
	}

	public Map<Integer, String> populateCourseOfStudy(){
		List<Class<?>> list = CommonController.getAllObjects(CourseTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			CourseTB c = CourseTB.class.cast(list.get(i));
			courseOfStudyMap.put(c.getCourseID(), c.getCourseName());
		}
		return courseOfStudyMap;
	}

	public  Map<Integer, String> getProductSubCategories(){
		List<Class<?>> list = CommonController.getAllObjects(ProductSubCategoryMasterTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			ProductSubCategoryMasterTB product = ProductSubCategoryMasterTB.class.cast(list.get(i));
			productSubCategoryMap.put(product.getProductSubCategoryId(), product.getProductSubCategoryName());
		}
		return productSubCategoryMap;
	}

	public  Map<Integer, String> getLevels(){
		List<Class<?>> list = CommonController.getAllObjects(LevelOfStudyTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			LevelOfStudyTB l = LevelOfStudyTB.class.cast(list.get(i));
			levelMap.put(l.getLevelId(), l.getLevelName());
		}
		return levelMap;
	}

	public  Map<Integer, String> getSubjects(){
		List<Class<?>> list = CommonController.getAllObjects(CourseSubjectTB.class, "Status = 1");
		for(int i=0; i<list.size(); i++){
			CourseSubjectTB cs = CourseSubjectTB.class.cast(list.get(i));
			subjectMap.put(cs.getSubjectId(), cs.getSubjectName());
		}
		return subjectMap;
	}
}
