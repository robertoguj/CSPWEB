package com.cspecem.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cspecem.model.Produto;
import com.cspecem.service.ProdutoService;

@Controller
public class ProdutoController extends AbstractController {
	
	private final Logger logger = LoggerFactory.getLogger(ProdutoController.class);

	@Autowired
	ProdutoService produtoService;

	@RequestMapping(value = {"/produtos" }, method = RequestMethod.GET)
	public String listar(ModelMap model) {

		model.addAttribute("produto", new Produto());
		model.addAttribute("produtos", this.produtoService.listar());
		return "produto/produtoLista";
		
	}
	
	/**
	 * Este método irá fornecer o meio para adicionar um novo usuário.
	 */
	@RequestMapping(value={"/produto/add"}, method = RequestMethod.GET)
	public String adicionar(ModelMap model) {
		model.addAttribute("produto", new Produto());
		model.addAttribute("usuarioLogado", getPrincipal());
		return "produto/produtoForm";
	}

	/**
	 * Este método irá fornecer o meio para adicionar um novo produto.
	 */
	@RequestMapping(value = { "/produto/add" }, method = RequestMethod.POST)
	public String saveOrUpdate(@Valid Produto produto, BindingResult resultado, ModelMap model) {
		
		logger.debug("saveOrUpdateProduto() : {}", produto);
		
		if (resultado.hasErrors()) {
			return "produto/produtoForm";
			
		}			
		
		this.produtoService.salvar(produto);
		model.addAttribute("sucesso", "Salvo com sucesso.");
		
		return "produto/produtoSucesso";
		
	}

	
	@RequestMapping(value = { "/produto/remover/{id}" })
	public String deletar(@PathVariable("id") int id) {
		this.produtoService.remover(id);
        return "redirect:/produtos";

	}
	
	@RequestMapping(value = { "/produto/editar/{id}" })
	public String editar(ModelMap model, @PathVariable("id") int id) {

		model.addAttribute("produto", this.produtoService.buscarPorId(id));
        model.addAttribute("produtos", this.produtoService.listar());
        return "produto/produtoForm";
		
	}

}
