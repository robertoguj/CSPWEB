package com.cspecem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cspecem.dao.ProdutoDao;
import com.cspecem.model.Produto;

@Service("produtoService")
@Transactional
public class ProdutoServiceImpl implements ProdutoService {

	@Autowired
	ProdutoDao produtoDAO;

	public Produto buscarPorId(int id) {
		return produtoDAO.buscaPorId(id);
	}

	public void salvarProduto(Produto produto) {
		produtoDAO.salvar(produto);
	}

	public void atualizarProduto(Produto produto) {

		Produto entity = produtoDAO.buscaPorId(produto.getId());
		if (entity != null) {
			entity.setCodigo(produto.getCodigo());
			entity.setDescricao(produto.getDescricao());
			entity.setFabricante(produto.getFabricante());
			entity.setModelo(produto.getModelo());
			entity.setNome(produto.getNome());
		}

	}
	
	public void removerProduto(int id) {
		produtoDAO.remover(id);
		
	}
	
	public List<Produto> listarProdutos() {
		return produtoDAO.listarProdutos();
	}


}
