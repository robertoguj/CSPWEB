package com.cspecem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.EquipamentoDao;
import com.cspecem.model.Equipamento;
import com.cspecem.service.EquipamentoService;

@Service("equipamentoService")
@Transactional
public class EquipamentoServiceImpl implements EquipamentoService {

	@Autowired
	EquipamentoDao equipamentoDao;
	
	@Override
	public Equipamento encontrarPorId(int id) {
		return equipamentoDao.encontrarPorId(id);
	}

	@Override
	public void salvar(Equipamento equipamento) {
		equipamentoDao.salvar(equipamento);
		
	}

	@Override
	public void remover(int id) {
		equipamentoDao.remover(id);
		
	}

	@Override
	public List<Equipamento> listarTodos() {
		return equipamentoDao.listarTodos();
	}
	

}
