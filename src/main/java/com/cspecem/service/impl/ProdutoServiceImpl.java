package com.cspecem.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.ProdutoDao;
import com.cspecem.model.Produto;
import com.cspecem.service.ProdutoService;

@Service("produtoService")
@Transactional
public class ProdutoServiceImpl implements ProdutoService {

	@Autowired
	ProdutoDao produtoDAO;

	public Produto buscarPorId(int id) {
		return produtoDAO.buscaPorId(id);
	}

	public void salvar(Produto produto) {
		produtoDAO.salvar(produto);	
	}

	public void remover(int id) {
		produtoDAO.remover(id);
		
	}
	
	public List<Produto> listarTodos() {
		return produtoDAO.listarTodos();
	}


}
