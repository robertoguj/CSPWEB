package com.cspecem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.DepartamentoDao;
import com.cspecem.model.Departamento;
import com.cspecem.service.DepartamentoService;

@Service("departamentoService")
@Transactional
public class DepartamentoServiceImpl implements DepartamentoService {

	@Autowired
	DepartamentoDao departamentoDao;
	
	@Override
	public Departamento encontrarPorId(int id) {
		return departamentoDao.encontrarPorId(id);
	}

	@Override
	public void salvar(Departamento departamento) {
		departamentoDao.salvar(departamento);
		
	}

	@Override
	public void deletar(int id) {
		departamentoDao.deletar(id);
		
	}

	@Override
	public List<Departamento> listar() {
		return departamentoDao.listar();
	}

}
