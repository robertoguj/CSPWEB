package com.cspecem.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class DaoGenerico<PK extends Serializable, T> {
	
	private final Class<T> persistentClass;
	
	@SuppressWarnings("unchecked")
	public DaoGenerico(){
		this.persistentClass =(Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
	}
	
	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	public T fetchById(PK id) {
		return (T) getSession().get(persistentClass, id);
	}

	public void save(T entity) {
		getSession().persist(entity);
	}

	public void update(T entity) {
		getSession().update(entity);
	}
	
	public void saveOrUpdate(T entity) {
		getSession().saveOrUpdate(entity);
	}

	public void remove(T entity) {
		getSession().delete(entity);
	}
	
	@SuppressWarnings("unchecked")
	public List<T> getAll() {
        return getSession().createCriteria(persistentClass).list();
    }
	
	protected Criteria createEntityCriteria(){
		return getSession().createCriteria(persistentClass);
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findAll(Class<T> classe) {
		return getSession().createQuery("from " + persistentClass.getName()).list();
	}
	

}
