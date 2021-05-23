package com.dao;

import java.util.List;

import com.model.Cart;
import com.model.Item;
public abstract class CartDAO {
	
	public abstract void additem(com.model.Cart item);

	public abstract Cart getItemById(int id);

	public abstract void updateItem(Cart item);

	public abstract List<Cart> getAllItems();

	public abstract void deleteItem(Cart item);

}
