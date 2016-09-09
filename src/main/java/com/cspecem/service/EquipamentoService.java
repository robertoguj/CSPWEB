package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Equipamento;

public interface EquipamentoService {

	Equipamento encontrarPorId(int id);

	void salvar(Equipamento equipamento);

	void remover(int id);

	List<Equipamento> listarTodos();

}
