package com.cspecem.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cspecem.dao.DaoGenerico;
import com.cspecem.dao.UsuarioDao;
import com.cspecem.model.Usuario;

@Repository("usuarioDao")
public class UsuarioDaoImpl extends DaoGenerico<Integer, Usuario> implements UsuarioDao {

	static final Logger logger = LoggerFactory.getLogger(UsuarioDaoImpl.class);
	
	public Usuario findById(int id) {
		Usuario user = fetchById(id);
		if(user!=null){
			Hibernate.initialize(user.getUserProfiles());
		}
		return user;
	}

	public Usuario findBySSO(String sso) {
		logger.info("SSO : {}", sso);
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		Usuario user = (Usuario)crit.uniqueResult();
		if(user!=null){
			Hibernate.initialize(user.getUserProfiles());
		}
		return user;
	}

	@SuppressWarnings("unchecked")
	public List<Usuario> findAllUsers() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("firstName"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<Usuario> users = (List<Usuario>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return users;
	}

	public void salvar(Usuario user) {
		save(user);
	}

	public void deleteBySSO(String sso) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("ssoId", sso));
		Usuario user = (Usuario)crit.uniqueResult();
		remove(user);
	}

}
