package com.cspecem.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cspecem.dao.DaoGenerico;
import com.cspecem.dao.ProdutoDao;
import com.cspecem.model.Produto;

@Repository("produtoDao")
public class ProdutoDaoImpl extends DaoGenerico<Integer, Produto> implements ProdutoDao {
	
	static final Logger logger = LoggerFactory.getLogger(ProdutoDaoImpl.class);

	public Produto buscaPorId(int id) {
		logger.info("Codigo : {}", id);
		Produto produto = fetchById(id);
		return produto;
	}

	public Produto buscaPorCodigo(String codigo) {
		logger.info("Codigo : {}", codigo);
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("codigo", codigo));
		Produto produto = (Produto)criteria.uniqueResult();
		
		return produto;
	}

	public void salvar(Produto produto) {
		logger.info("Produto : {}", produto);
		saveOrUpdate(produto);
	}

	public void remover(int id) {
		logger.info("Codigo : {}", id);
		Produto produto = new Produto();
		produto.setId(id);
		remove(produto);
	}

	@SuppressWarnings("unchecked")
	public List<Produto> listarPorId() {
		Criteria criteria = createEntityCriteria().addOrder(Order.desc("id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<Produto> produtos = (List<Produto>) criteria.list();
		for(Produto p : produtos) {
			logger.info("Lista de produto:: " + p);
		}
		
		return produtos;
	}
	
	public List<Produto> listarTodos() {
		Produto produto = null;
		logger.info("Lista de produto: " + produto);
		return findAll(Produto.class);
	}

	
}
