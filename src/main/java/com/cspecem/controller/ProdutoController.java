package com.cspecem.controller;

import javax.validation.Valid;

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

	@Autowired
	ProdutoService produtoService;

	@RequestMapping(value = {"/produtos" }, method = RequestMethod.GET)
	public String listarProdutos(ModelMap model) {

		model.addAttribute("produto", new Produto());
		model.addAttribute("listaProdutos", this.produtoService.listarProdutos());
		return "produto/produtoLista";
		
	}
	
	/**
	 * Este método irá fornecer o meio para adicionar um novo usuário.
	 */
	@RequestMapping(value={"/produto/add"}, method = RequestMethod.GET)
	public String novoProduto(ModelMap model) {
		model.addAttribute("produto", new Produto());
		model.addAttribute("usuarioLogado", getPrincipal());
		return "produto/produtoRegistro";
	}

	/**
	 * Este método irá fornecer o meio para adicionar um novo produto.
	 */
	@RequestMapping(value = { "/produto/add" }, method = RequestMethod.POST)
	public String salvarProduto(@Valid Produto produto, BindingResult resultado) {
		
		if (resultado.hasErrors()) {
			return "redirect:/produtos";
		}
		
		if(produto.getId() == 0){
			this.produtoService.salvarProduto(produto);
		}else{
			this.produtoService.atualizarProduto(produto);
		}

		return "redirect:/produtos";

	}

	@RequestMapping(value = { "/removerProduto/{id}" })
	public String deletarProduto(@PathVariable("id") int id) {
	
		this.produtoService.removerProduto(id);
        return "redirect:/produtos";

	}
	
	@RequestMapping(value = { "/editarProduto/{id}" })
	public String editarProduto(ModelMap model, @PathVariable("id") int id) {

		model.addAttribute("produto", this.produtoService.buscarPorId(id));
        model.addAttribute("listaProdutos", this.produtoService.listarProdutos());
        return "produto/produtoRegistro";
		
	}

}
