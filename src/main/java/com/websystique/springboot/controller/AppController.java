package com.websystique.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AppController {

	@RequestMapping("/")
	String home(ModelMap modal) {
		modal.addAttribute("title","hospitalT");
		return "index";
	}

	@RequestMapping(value = "/{id}" , method = RequestMethod.GET  )
	String partialHandler(@PathVariable("id") String id) {
		return "Hospitals";
	}

}
