package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Area;

public interface AreaService {
	
	Area encontrarPorId(int id);
	
	void salvar(Area area);
	
	void deletar(int id);
	
	List<Area> listar();

}
