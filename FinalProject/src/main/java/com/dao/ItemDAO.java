package com.dao;

import com.model.Item;

public interface ItemDAO {
	public abstract Item getItemById(int id);
}