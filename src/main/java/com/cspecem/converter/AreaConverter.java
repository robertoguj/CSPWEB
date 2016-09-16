package com.cspecem.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.cspecem.model.Area;
import com.cspecem.service.AreaService;

@Component
public class AreaConverter implements Converter<String, Area> {

	static final Logger logger = LoggerFactory.getLogger(AreaConverter.class);
	
	@Autowired
	AreaService areaService;
	
	@Override
	public Area convert(String id) {
		Area area = new Area(); 
		logger.info("Área: {}", area);
		return areaService.encontrarPorId(Integer.parseInt(id));
	}

}
