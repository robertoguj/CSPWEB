package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Produto;

public interface ProdutoService {
	
	Produto buscarPorId(int id);
	
	void salvar(Produto produto);
	
	List<Produto> listarTodos();
	
	void remover(int id);

}
