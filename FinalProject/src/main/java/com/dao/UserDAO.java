package com.dao;

import com.model.User;

public abstract class UserDAO {
	public abstract void createUser(com.model.User user);

	public abstract boolean checkUser(User userlogin);

	public abstract Object updateUser(User logout,int flag);

	public abstract User getloggedinuser();
}
