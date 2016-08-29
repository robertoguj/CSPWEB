package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Usuario;

public interface UsuarioService {
	
	Usuario findById(int id);
	
	Usuario findBySSO(String sso);
	
	void saveUser(Usuario user);
	
	void updateUser(Usuario user);
	
	void deleteUserBySSO(String sso);

	List<Usuario> findAllUsers(); 
	
	boolean isUserSSOUnique(Integer id, String sso);

}