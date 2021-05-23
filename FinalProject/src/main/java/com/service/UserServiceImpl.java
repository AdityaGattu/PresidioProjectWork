package com.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDAO;
import com.model.User;

@Service("us")
@Transactional

public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	public UserDAO getUserDAO() {
		return userDAO;
	}
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
@Override
public void createUser(User user) {
	// TODO Auto-generated method stub
	userDAO.createUser(user);
}
@Override
public boolean checkUser(User userlogin) {
	// TODO Auto-generated method stub
	return userDAO.checkUser(userlogin);
	
}

@Override
public void updateUser(User logout,int flag) {
	// TODO Auto-generated method stub
	userDAO.updateUser(logout,flag);
}
@Override
public User getloggedinuser() {
	// TODO Auto-generated method stub
	return userDAO.getloggedinuser();
}


}
