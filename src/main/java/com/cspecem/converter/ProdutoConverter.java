package com.cspecem.converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import com.cspecem.model.Produto;
import com.cspecem.service.ProdutoService;

@Component
public class ProdutoConverter implements Converter<Object, Produto> {

	static final Logger logger = LoggerFactory.getLogger(ProdutoConverter.class);
			
	@Autowired
	ProdutoService produtoService;
	
	public Produto convert(Object element) {
		Integer id = Integer.parseInt((String)element);
		Produto produto = produtoService.buscarPorId(id);
		logger.info("Profile : {}", produto);
		return produto;
	}

}
