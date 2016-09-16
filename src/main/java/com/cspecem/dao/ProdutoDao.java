package com.cspecem.dao;

import java.util.List;

import com.cspecem.model.Produto;

public interface ProdutoDao {
	
	Produto buscaPorId(int id);
	
	Produto buscaPorCodigo(String codigo);
	
	void salvar(Produto produto);
	
	void remover(int id);
	
	List<Produto> listar();
	List<Produto> listarPorFabricante();

}
