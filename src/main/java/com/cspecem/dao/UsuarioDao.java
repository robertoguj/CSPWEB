package com.cspecem.dao;

import java.util.List;

import com.cspecem.model.Usuario;


public interface UsuarioDao {

	Usuario encontrarPorId(int id);
	
	Usuario encontrarPorSSO(String sso);
	
	void salvar(Usuario usuario);
	
	void deletarPorSSO(String sso);
	
	List<Usuario> encontrarTodos();

}

