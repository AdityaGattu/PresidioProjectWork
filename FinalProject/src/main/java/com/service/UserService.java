package com.service;

import com.model.User;

public interface UserService {
	public void createUser(User user);

	public boolean checkUser(User userlogin);


	void updateUser(User logout, int flag);

	public User getloggedinuser();

}
