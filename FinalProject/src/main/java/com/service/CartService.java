package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.model.Cart;


public interface CartService {
	
	void additem(Cart item);
	public Cart getItembyid(int id);
	void updateItem(Cart item);
	public void deleteItem(Cart item);
	public List<Cart> getAllItems();
	
}
