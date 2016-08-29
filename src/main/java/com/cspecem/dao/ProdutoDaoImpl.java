package com.cspecem.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cspecem.model.Produto;

@Repository("produtoDao")
public class ProdutoDaoImpl extends AbstractDao<Integer, Produto> implements ProdutoDao {
	
	static final Logger logger = LoggerFactory.getLogger(ProdutoDaoImpl.class);

	public Produto buscaPorId(int id) {
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
		save(produto);
	}

	public void atualizar(Produto produto) {
		update(produto);
	}
	
	public void remover(int id) {
		Produto produto = new Produto();
		produto.setId(id);
		remove(produto);
	}

	@SuppressWarnings("unchecked")
	public List<Produto> listarProdutos() {
		Criteria criteria = createEntityCriteria().addOrder(Order.desc("id"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<Produto> produtos = (List<Produto>) criteria.list();
		for(Produto p : produtos) {
			logger.info("Lista de produto:: " + p);
		}
		
		return produtos;
	}

	
}
