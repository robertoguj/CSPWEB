package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Departamento;

public interface DepartamentoService {
	
	Departamento encontrarPorId(int id);
	
	void salvar(Departamento departamento);
	
	void deletar(int id);
	
	List<Departamento> listar();

}
