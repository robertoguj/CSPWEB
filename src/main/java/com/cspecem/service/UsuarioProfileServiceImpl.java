package com.cspecem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.UsuarioProfileDao;
import com.cspecem.model.Profile;

@Service("usuarioProfileService")
@Transactional
public class UsuarioProfileServiceImpl implements UsuarioProfileService{
	
	@Autowired
	UsuarioProfileDao dao;
	
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
