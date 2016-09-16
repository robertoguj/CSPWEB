package com.cspecem.dao.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cspecem.dao.AreaDao;
import com.cspecem.dao.DaoGenerico;
import com.cspecem.model.Area;

@Repository("areaDao")
public class AreaDaoImpl extends DaoGenerico<Integer, Area> implements AreaDao {

	static final Logger logger = LoggerFactory.getLogger(AreaDaoImpl.class);
	
	@Override
	public Area encontrarPorId(int id) {
		logger.info("Código: {}", id);
		Area area = fetchById(id);
		return area;
	}

	@Override
	public void salvar(Area area) {
		logger.info("Área: {}", area);
		saveOrUpdate(area);
		
	}

	@Override
	public void deletar(int id) {
		logger.info("Código: {}", id);
		Area area = new Area();
		area.setId(id);
		remove(area);
		
	}

	@Override
	public List<Area> listar() {
		return findAll(Area.class);
	}

}
