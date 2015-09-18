package com.edusmartweb.edusmart.cart;

import java.util.HashMap;
import java.util.Map;

import com.edusmartweb.edusmart.model.ProductTB;

public class ViewCart {
		
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private double total;
	private String header;
	private Map<ProductTB, Double> products = new HashMap<ProductTB, Double>();
	
	
	
	public String getHeader() {
		return header;
	}
	public void setHeader(String header) {
		this.header = header;
	}

	/*@Override
	public String execute() throws Exception {
		
		setHeader("header2");
		
		Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
		
		if(cart == null){
			return "error";
		}
		
		products = cart.getProducts();
		total = cart.getTotalPrice();
		
		System.out.println(products.keySet());
		
		return "success";
	}*/
	
	public Map<ProductTB, Double> getProducts(){
		return products;
	}
	
	public double getTotal(){
		return total;
	}
}
