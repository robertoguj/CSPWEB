package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Profile;


public interface UsuarioProfileService {

	Profile findById(int id);

	Profile findByType(String type);
	
	List<Profile> findAll();
	
}
