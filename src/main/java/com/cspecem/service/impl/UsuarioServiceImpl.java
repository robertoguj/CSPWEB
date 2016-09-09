package com.cspecem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.UsuarioDao;
import com.cspecem.model.Usuario;
import com.cspecem.service.UsuarioService;

@Service("usuarioService")
@Transactional
public class UsuarioServiceImpl implements UsuarioService{

	@Autowired
	private UsuarioDao dao;

	@Autowired
    private PasswordEncoder passwordEncoder;
	
	public Usuario findById(int id) {
		return dao.encontrarPorId(id);
	}

	public Usuario findBySSO(String sso) {
		Usuario user = dao.encontrarPorSSO(sso);
		return user;
	}

	public void saveUser(Usuario user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		dao.salvar(user);
	}

	/*
	 * Since the method is running with Transaction, No need to call hibernate update explicitly.
	 * Just fetch the entity from db and update it with proper values within transaction.
	 * It will be updated in db once transaction ends. 
	 */
	public void updateUser(Usuario user) {
		Usuario entity = dao.encontrarPorId(user.getId());
		if(entity!=null){
			entity.setSsoId(user.getSsoId());
			if(!user.getPassword().equals(entity.getPassword())){
				entity.setPassword(passwordEncoder.encode(user.getPassword()));
			}
			entity.setFirstName(user.getFirstName());
			entity.setLastName(user.getLastName());
			entity.setEmail(user.getEmail());
			entity.setUserProfiles(user.getUserProfiles());
		}
	}

	
	public void deleteUserBySSO(String sso) {
		dao.deletarPorSSO(sso);
	}

	public List<Usuario> findAllUsers() {
		return dao.encontrarTodos();
	}

	public boolean isUserSSOUnique(Integer id, String sso) {
		Usuario user = findBySSO(sso);
		return ( user == null || ((id != null) && (user.getId() == id)));
	}
	
}
