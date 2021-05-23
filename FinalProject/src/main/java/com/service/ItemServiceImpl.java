package com.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ItemDAO;
import com.model.Item;

@Service
@Transactional
public class ItemServiceImpl implements ItemService {
	
	@Autowired
	private ItemDAO itemdao;

	public ItemDAO getItemdao() {
		return itemdao;
	}

	public void setItemdao(ItemDAO itemdao) {
		this.itemdao = itemdao;
	}

	@Override
	public Item getItemById(int itemid) {
		// TODO Auto-generated method stub
		return itemdao.getItemById(itemid);

	}

}
