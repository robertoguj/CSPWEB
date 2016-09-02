package com.cspecem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.ProfileDao;
import com.cspecem.model.Profile;
import com.cspecem.service.ProfileService;

@Service("profileService")
@Transactional
public class ProfileServiceImpl implements ProfileService{
	
	@Autowired
	ProfileDao dao;
	
	public Profile findById(int id) {
		return dao.findById(id);
	}

	public Profile findByType(String type){
		return dao.findByType(type);
	}

	public List<Profile> findAll() {
		return dao.findAll();
	}
}
