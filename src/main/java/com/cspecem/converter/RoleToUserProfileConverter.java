package com.cspecem.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.cspecem.model.Profile;
import com.cspecem.service.ProfileService;

/**
 * A converter class used in views to map id's to actual userProfile objects.
 */
@Component
public class RoleToUserProfileConverter implements Converter<Object, Profile>{

	static final Logger logger = LoggerFactory.getLogger(RoleToUserProfileConverter.class);
	
	@Autowired
	ProfileService usuarioProfileService;

	/**
	 * Gets UsuarioProfile por ID
	 * @see org.springframework.core.convert.converter.Converter#convert(java.lang.Object)
	 */
	public Profile convert(Object element) {
		Integer id = Integer.parseInt((String)element);
		Profile profile= usuarioProfileService.findById(id);
		logger.info("Profile : {}",profile);
		return profile;
	}
	
}