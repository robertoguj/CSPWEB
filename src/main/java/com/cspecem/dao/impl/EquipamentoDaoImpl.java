package com.cspecem.dao.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cspecem.dao.DaoGenerico;
import com.cspecem.dao.EquipamentoDao;
import com.cspecem.model.Equipamento;

@Repository("equipamentoDao")
public class EquipamentoDaoImpl extends DaoGenerico<Integer, Equipamento> implements EquipamentoDao {
	
	static final Logger logger = LoggerFactory.getLogger(EquipamentoDaoImpl.class);

	@Override
	public Equipamento encontrarPorId(int id) {
		logger.info("Código: {}", id);
		Equipamento equipamento = fetchById(id);
		return equipamento;
	}

	@Override
	public void salvar(Equipamento equipamento) {
		logger.info("Equipamento: {}", equipamento);
		saveOrUpdate(equipamento);
	}

	@Override
	public void remover(int id) {
		logger.info("Código: {}", id);
		Equipamento equipamento = new Equipamento();
		equipamento.setId(id);
		remove(equipamento);
	}

	@Override
	public List<Equipamento> listarTodos() {
		return findAll(Equipamento.class);
	}

}
