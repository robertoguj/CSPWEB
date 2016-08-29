package com.cspecem.dao;

import java.util.List;

import com.cspecem.model.Usuario;


public interface UsuarioDao {

	Usuario findById(int id);
	
	Usuario findBySSO(String sso);
	
	void salvar(Usuario user);
	
	void deleteBySSO(String sso);
	
	List<Usuario> findAllUsers();

}

