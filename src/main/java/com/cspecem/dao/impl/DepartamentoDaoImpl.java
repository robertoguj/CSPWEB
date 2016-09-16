package com.cspecem.dao.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cspecem.dao.DaoGenerico;
import com.cspecem.dao.DepartamentoDao;
import com.cspecem.model.Departamento;

@Repository("departamentoDao")
public class DepartamentoDaoImpl extends DaoGenerico<Integer, Departamento> implements DepartamentoDao {

	static final Logger logger = LoggerFactory.getLogger(DepartamentoDaoImpl.class);
	
	@Override
	public Departamento encontrarPorId(int id) {
		logger.info("Código: {}", id);
		Departamento departamento = fetchById(id);
		return departamento;
	}

	@Override
	public void salvar(Departamento departamento) {
		logger.info("Departamento: {}", departamento);
		saveOrUpdate(departamento);
	}

	@Override
	public void deletar(int id) {
		logger.info("Código: {}", id);
		Departamento departamento = new Departamento();
		departamento.setId(id);
		remove(departamento);
		
	}

	@Override
	public List<Departamento> listar() {
		return findAll(Departamento.class);
	}

}
