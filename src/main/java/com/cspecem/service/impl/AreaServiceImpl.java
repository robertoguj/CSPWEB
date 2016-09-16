package com.cspecem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.AreaDao;
import com.cspecem.model.Area;
import com.cspecem.service.AreaService;

@Service("areaService")
@Transactional
public class AreaServiceImpl implements AreaService {

	@Autowired
	AreaDao areaDao;
	
	@Override
	public Area encontrarPorId(int id) {
		return areaDao.encontrarPorId(id);
	}

	@Override
	public void salvar(Area area) {
		areaDao.salvar(area);
		
	}

	@Override
	public void deletar(int id) {
		areaDao.deletar(id);
		
	}

	@Override
	public List<Area> listar() {
		return areaDao.listar();
	}

}
