package com.cspecem.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.cspecem.model.Profile;

@Repository("usuarioProfileDao")
public class UsuarioProfileDaoImpl extends AbstractDao<Integer, Profile>implements UsuarioProfileDao{

	public Profile findById(int id) {
		return fetchById(id);
	}

	public Profile findByType(String type) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("type", type));
		return (Profile) crit.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<Profile> findAll(){
		Criteria crit = createEntityCriteria();
		crit.addOrder(Order.asc("type"));
		return (List<Profile>)crit.list();
	}
	
}
