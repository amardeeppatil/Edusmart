package com.edusmartweb.edusmart.cart;



public class AddProductToCart {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int newProductId;

	public int getNewProductId() {
		return newProductId;
	}
	public void setNewProductId(int newProductId) {
		this.newProductId = newProductId;
	}
	
	/*@Override
	public String execute() throws Exception {
		Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");

		if(cart==null){
			cart = new Cart();
		}

		ProductTB p = ProductTB.class.cast(CommonController.getObjectById(newProductId, ProductTB.class));
		if(p.getProductId() == 0){
			return "error";
		}
		
		cart.addProduct(p);
		ActionContext.getContext().getSession().put("cart", cart);
		return "success";
	}*/
}
