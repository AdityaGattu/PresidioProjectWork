package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.model.Cart;
import com.model.Item;
import com.service.ItemService;

@Repository
public class CartDAOImpl extends CartDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void additem(Cart item) {
		Session session=sessionFactory.getCurrentSession();
		session.persist(item);
	}
	@Override
	public Cart getItemById(int id) {
		// TODO Auto-generated method stub
		//ArrayList<Cart>list=new ArrayList<>();
		Session session=sessionFactory.getCurrentSession();
		return (Cart)session.get(Cart.class,id);
		//Query query=session.createSQLQuery("select * from cart where itemid =:idval");
//		query.setParameter("idval", id);
//		int status=query.getFirstResult();
//		System.out.println(status);
		
			
		}
	
	@Override
	public void updateItem(Cart item) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		session.update(item);
//		SQLQuery query=session.createSQLQuery("update cart set qty=:qty and total=:total where itemid =:id");
//		query.addEntity(Cart.class);
//		query.setParameter("id", item.getItemid());
//		query.setParameter("qty", item.getQty());
//		query.setParameter("total", item.getTotal());
	}
	
	
	@Override
	public List<Cart> getAllItems() {
		// TODO Auto-generated method stub

		List<Cart>allitems=new ArrayList<Cart>();

		Session session=sessionFactory.getCurrentSession();
		allitems = (List<Cart>)session.createQuery("from Cart").list();
		return allitems;
	}
	@Override
	public void deleteItem(Cart item) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		session.delete(item);
	}
}
