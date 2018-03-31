package com.ls.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class postController {

	@RequestMapping("/post")
	public String today(Model model) {
		return "post";
	}
}
