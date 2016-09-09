package com.cspecem.dao;

import java.util.List;

import com.cspecem.model.Equipamento;

public interface EquipamentoDao {
	
	Equipamento encontrarPorId(int id);
	
	void salvar(Equipamento equipamento);
	
	void remover(int id);
	
	List<Equipamento> listarTodos();

}
