package com.cspecem.security;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.model.Profile;
import com.cspecem.model.Usuario;
import com.cspecem.service.UsuarioService;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService{

	static final Logger logger = LoggerFactory.getLogger(CustomUserDetailsService.class);
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Transactional(readOnly=true)
	public UserDetails loadUserByUsername(String ssoId)
			throws UsernameNotFoundException {
		Usuario user = usuarioService.findBySSO(ssoId);
		logger.info("User : {}", user);
		if(user == null){
			logger.info("Usuário ou senha inválido");
			throw new UsernameNotFoundException("Usuário ou senha inválido");
		}
			return new org.springframework.security.core.userdetails.User(user.getSsoId(), user.getPassword(), 
				 true, true, true, true, getGrantedAuthorities(user));
	}

	
	private List<GrantedAuthority> getGrantedAuthorities(Usuario user){
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for(Profile userProfile : user.getUserProfiles()){
			logger.info("UsuarioProfile : {}", userProfile);
			authorities.add(new SimpleGrantedAuthority("ROLE_"+userProfile.getType()));
		}
		logger.info("authorities : {}", authorities);
		return authorities;
	}
	
}
