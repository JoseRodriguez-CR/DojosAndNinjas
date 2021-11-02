package com.joserodriguez.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.joserodriguez.dojosandninjas.models.Ninja;

import com.joserodriguez.dojosandninjas.services.DojoService;
import com.joserodriguez.dojosandninjas.services.NinjaService;

@Controller
public class NinjaController {
	private final NinjaService ninjaService;
	//private final DojoService dojoService;
	
	public NinjaController(NinjaService ninjaService, DojoService dojoService) {
		this.ninjaService = ninjaService;
		//this.dojoService = dojoService;
	}

	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninjaObject") Ninja Ninja, Model model) {
		model.addAttribute("ninjas", ninjaService.getAllNinjas());
		//model.addAttribute("dojos", dojoService.getAllDojos());
		return "/show.jsp";
	}
	
	@PostMapping("/addninja")
	public String addNinja(@Valid @ModelAttribute("ninjaObject") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "/newninja.jsp";
		}
		else {
			ninjaService.addNinja(ninja);
			return "redirect:/dojos/" + ninja.getDojo().getId() ;
		}
	}
}
