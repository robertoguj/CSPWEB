package com.cspecem.dao;

import java.util.List;

import com.cspecem.model.Area;

public interface AreaDao {
	
	Area encontrarPorId(int id);
	
	void salvar(Area area);
	
	void deletar(int id);
	
	List<Area> listar();

}
