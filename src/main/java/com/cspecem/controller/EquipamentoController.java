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

import com.cspecem.model.Equipamento;
import com.cspecem.model.Produto;
import com.cspecem.service.EquipamentoService;
import com.cspecem.service.ProdutoService;

@Controller
public class EquipamentoController {
	
	private final Logger logger = LoggerFactory.getLogger(EquipamentoController.class);
	
	@Autowired
	EquipamentoService equipamentoService;
	
	@Autowired
	ProdutoService produtoService;
	
	@RequestMapping(value={"/equipamentos"}, method=RequestMethod.GET)
	public String equipamentos(ModelMap model) {
		
		model.addAttribute("equipamento", new Equipamento());
		model.addAttribute("equipamentos", this.equipamentoService.listarTodos());
		return "equipamento/equipamentoLista";
	}
	
	
	@RequestMapping(value={"/equipamento/add"}, method=RequestMethod.GET)
	public String adicionar(ModelMap model) {
		
		model.addAttribute("equipamento", new Equipamento());
		model.addAttribute("produto", new Produto());
		model.addAttribute("listaProdutos", this.produtoService.listarTodos());
		
		return "equipamento/equipamentoForm";
	}
	
	
	@RequestMapping(value={"/equipamento/add"}, method=RequestMethod.POST)
	public String saveOrUpdate(@Valid Equipamento equipamento, BindingResult resultado, ModelMap model) {
		
		logger.debug("saveOrUpdateProduto() : {}", equipamento);	
		
		if(resultado.hasErrors()) {
			return "equipamento/equipamentoForm";
		}
		
		equipamentoService.salvar(equipamento);
		model.addAttribute("sucesso", "Equipamento salvo com sucesso.");
		
		return "equipamento/equipamentoSucesso";
		
	}
	
	@RequestMapping(value={"/removerEquipamento/{id}"})
	public String deletar(@PathVariable("id") int id) {
		
		this.equipamentoService.remover(id);
		return "redirect:/produtos";
	}
	
	
	@RequestMapping(value={"/editarEquipamento/{id}"})
	public String editar(ModelMap model, @PathVariable("id") int id) {
		
		model.addAttribute("equipamento", this.equipamentoService.encontrarPorId(id));
		model.addAttribute("equipamentos", this.equipamentoService.listarTodos());
		
		return "equipamento/equipamentoForm";
	}

}
