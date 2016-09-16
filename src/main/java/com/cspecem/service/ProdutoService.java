package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Produto;

public interface ProdutoService {
	
	Produto buscarPorId(int id);
	
	void salvar(Produto produto);
	
	void remover(int id);
	
	List<Produto> listar();
	List<Produto> listarPorFabricante();

}
