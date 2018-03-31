package com.ls.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class contactController {
	
	@RequestMapping("/contact")
	public String today(Model model) {
		return "contact";
	}
}
