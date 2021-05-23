package com.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CartDAO;
import com.model.Cart;

@Service
@Transactional
public class CartServiceImpl implements CartService{


	@Autowired
	private CartDAO cartdao;
	
	public CartDAO getCartdao() {
		return cartdao;
	}

	public void setCartdao(CartDAO cartdao) {
		this.cartdao = cartdao;
	}
	
	@Override
	public void additem(Cart item) {
		// TODO Auto-generated method stub
		cartdao.additem(item);
	}

	@Override
	public Cart getItembyid(int id) {
		// TODO Auto-generated method stub
		return cartdao.getItemById(id);
	}

	
	@Override
	public void updateItem(Cart item) {
		// TODO Auto-generated method stub
		cartdao.updateItem(item);
		
	}

	@Override
	public List<Cart> getAllItems() {
		// TODO Auto-generated method stub
		
		return cartdao.getAllItems();
	}

	@Override
	public void deleteItem(Cart item) {
		// TODO Auto-generated method stub
	   cartdao.deleteItem(item);
		
	}

	

}
