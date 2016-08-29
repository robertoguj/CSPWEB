package com.cspecem.service;

import java.util.List;

import com.cspecem.model.Produto;

public interface ProdutoService {
	
	Produto buscarPorId(int id);
	
	void salvarProduto(Produto produto);
	
	List<Produto> listarProdutos();
	
	void atualizarProduto(Produto produto);
	
	void removerProduto(int id);

}
