package com.dao;

import java.util.Iterator;
import java.util.List;

//import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Item;
import com.model.User;

@Repository
//@TransactionAttribute(TransactionAttributeType.REQUIRED)
//@Transactional( propagation = Propagation.REQUIRES_NEW )
public class UserDAOImpl extends UserDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void createUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		System.out.println(".................session factory.................:"+sessionFactory);
		user.setFlag(0);
		session.persist(user);
	//	session.beginTransaction().commit();
	}
	@Override
	public boolean checkUser(User userlogin) {
//		User user=new User();
//		Session session=sessionFactory.getCurrentSession();
//		Query query=session.createQuery("from User where uname=:uname and upass=:upass");
//		query.setParameter("uname", userlogin.getUname());
//		query.setString("uname", userlogin.getUpass());
//		Iterator it = query.iterate();
//		while(it.hasNext())
//		{
//		user= (User)it.next();
//		break;
//		}
		return true;
		//else return false;
		
	}
	
	@Override
	public Object updateUser(User logout,int flag) {
		// TODO Auto-generated method stub
		logout.setFlag(flag);
		return null;
	}
	@Override
	public User getloggedinuser() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return null;
	}
}
