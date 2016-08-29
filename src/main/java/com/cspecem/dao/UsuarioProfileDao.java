package com.cspecem.dao;

import java.util.List;

import com.cspecem.model.Profile;

public interface UsuarioProfileDao {

	List<Profile> findAll();

	Profile findByType(String type);

	Profile findById(int id);
}
