package com.edusmartweb.edusmart.cart;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import com.edusmartweb.edusmart.model.ProductTB;


public class Cart {
	
	private final Map<ProductTB, Double> cart = new HashMap<ProductTB, Double>();

	public Cart() {}
	
	public void addProduct(ProductTB p){
		Double amount = cart.get(p);
		cart.put(p, amount==null ? 1 : (amount+1));
	}
	
	public Map<ProductTB, Double> getProducts() {
		return cart;
	}
	
	public double getTotalPrice(){
		double total = 0;
		
		Set<ProductTB> keys = cart.keySet();
		for(ProductTB p : keys){
			total += p.getTuitionFee() * cart.get(p);
		}
		
		return total;		
	}
}
