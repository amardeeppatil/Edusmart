package com.edusmart.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.edusmart.controller.CommonController;
import com.edusmart.dao.ImageTB;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ImageAction extends ActionSupport implements ModelDriven<ImageTB>, ServletRequestAware {
	
	private static final long serialVersionUID = 5983490543680761888L;
	public List<ImageTB> imageList = new ArrayList<ImageTB>();
	public ImageTB image = new ImageTB();
	public CommonAction common = new CommonAction();
	private HttpServletRequest servletRequest;
	
	@Override
	public ImageTB getModel() {
		return image;
	}
	public List<ImageTB> getImageList() {
		return imageList;
	}
	public void setImageList(List<ImageTB> imageList) {
		this.imageList = imageList;
	}
	public ImageTB getImage() {
		return image;
	}
	public void setImage(ImageTB image) {
		this.image = image;
	}
	
	public String saveOrUpdateImage() throws IOException{
		try {
            String filePath = servletRequest.getSession().getServletContext().getRealPath("/");
            System.out.println("Server path:" + filePath);
            File fileToCreate = new File("D:\\EduSmartWebsite\\Web\\Upload\\", image.getUserImageFileName());
           
 
            FileUtils.copyFile(image.getUserImage(), fileToCreate);
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());
 
            return INPUT;
        }
		
		image.setUserImageFileName("D:\\EduSmartWebsite\\Web\\Upload\\" + image.getUserImageFileName());
		
//		CommonController.saveOrUpdateObject(image);
		return "success";
	}
	
	public String deleteImage(){
//		CommonController.deleteObject(Integer.parseInt(request.getParameter("ID")), ImageTB.class);
		return "success";
	}
	
	public String getImageById(){
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		image = ImageTB.class.cast(CommonController.getObjectById(
													Integer.parseInt(request.getParameter("ID")), ImageTB.class));
		return "success";
	}
	
	public String getAllImages(){
//		List<Class<?>> list = CommonController.getAllObjects("ImageTB", null);
//		for(int i=0; i<list.size(); i++){
//			ImageTB d = ImageTB.class.cast(list.get(i));
//			imageList.add(d);
//		}
		return "success";
	}
	
	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		 this.servletRequest = servletRequest;
	}
	
}
