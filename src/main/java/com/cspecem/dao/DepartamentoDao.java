package com.cspecem.dao;

import java.util.List;

import com.cspecem.model.Departamento;

public interface DepartamentoDao {
	
	Departamento encontrarPorId(int id);
	
	void salvar(Departamento departamento);
	
	void deletar(int id);
	
	List<Departamento> listar();

}
