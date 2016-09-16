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
import com.cspecem.service.AreaService;

@Controller
public class AreaController {
	
	private final Logger logger = LoggerFactory.getLogger(AreaController.class);
	
	@Autowired
	AreaService areaService;
	
	
	@RequestMapping(value={"/areas"}, method=RequestMethod.GET)
	public String listar(ModelMap model) {
		
		model.addAttribute("area", new Area());
		model.addAttribute("areas", this.areaService.listar());
		
		return "localizacao/area";
	}
	
	@RequestMapping(value={"area/add"}, method=RequestMethod.POST)
	public String saveOrUpdate(@Valid Area area, BindingResult resultado, ModelMap model) {
		logger.debug("saveOrUpdateProduto() : {}", area);
		
		if(resultado.hasErrors()) {
			return "localizacao/area";
		}
		
		this.areaService.salvar(area);
	
		return "redirect:/areas";
	}
	
	
	@RequestMapping(value={"area/remover/{id}"})
	public String deletar(@PathVariable("id") int id) {
		this.areaService.deletar(id);
		return "redirect:/areas";
	}
	
	
	@RequestMapping(value={"area/editar/{id}"})
	public String editar(ModelMap model, @PathVariable("id") int id) {
		model.addAttribute("area", this.areaService.encontrarPorId(id));
		model.addAttribute("areas", this.areaService.listar());
		return "localizacao/area";
	}

}
