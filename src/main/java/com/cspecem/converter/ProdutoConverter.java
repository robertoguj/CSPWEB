package com.cspecem.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.cspecem.model.Produto;
import com.cspecem.service.ProdutoService;

@Component
public class ProdutoConverter implements Converter<String, Produto> {

	static final Logger logger = LoggerFactory.getLogger(ProdutoConverter.class);
			
	@Autowired
	ProdutoService produtoService;

	@Override
	public Produto convert(String id) {
		Produto produto = new Produto();
		logger.info("Produto: {}", produto);
		return produtoService.buscarPorId(Integer.parseInt(id));
	}
	

}
