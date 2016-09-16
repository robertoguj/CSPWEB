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

import com.cspecem.model.Area;
import com.cspecem.model.Departamento;
import com.cspecem.service.AreaService;
import com.cspecem.service.DepartamentoService;

@Controller
public class DepartamentoController {
	
	static final Logger logger = LoggerFactory.getLogger(DepartamentoController.class);
	
	@Autowired
	DepartamentoService departamentoService;
	
	@Autowired
	AreaService areaService;
	
	@RequestMapping(value={"/departamentos"}, method=RequestMethod.GET)
	public String listar(ModelMap model) {
		
		model.addAttribute("area", new Area());
		model.addAttribute("areas", this.areaService.listar());
		
		model.addAttribute("departamento", new Departamento());
		model.addAttribute("departamentos", this.departamentoService.listar());
		
		return "localizacao/departamento";
	}
	
	@RequestMapping(value={"/departamento/add"}, method=RequestMethod.POST)
	public String saveOrUpdate(@Valid Departamento departamento, BindingResult resultado, ModelMap model) {
		logger.debug("saveOrUpdateProduto() : {}", departamento);
		if(resultado.hasErrors()) {
			return "localizacao/departamento";
		}
		
		this.departamentoService.salvar(departamento);
		
		return "redirect:/departamentos";
	}
	
	
	@RequestMapping(value={"/departamento/remover/{id}"}, method=RequestMethod.DELETE)
	public String deletar(@PathVariable("id") int id) {
		this.departamentoService.deletar(id);
		return "redirect:/departamentos";
	}
	
	@RequestMapping(value={"/departamento/editar/{id}"})
	public String editar(ModelMap model, @PathVariable("id") int id) {

		model.addAttribute("departamento", this.departamentoService.encontrarPorId(id));
		
		model.addAttribute("areas", this.areaService.listar());
		model.addAttribute("departamentos", this.departamentoService.listar());
		
		return "localizacao/departamento";
	}

}
