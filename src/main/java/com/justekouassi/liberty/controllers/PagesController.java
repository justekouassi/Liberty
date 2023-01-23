package com.justekouassi.liberty.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class PagesController {

	@GetMapping("/")
	public String index(HttpServletRequest request, ModelMap modelMap) {
		String name = "Juste";
		modelMap.put("name", name);
		return "index";
	}
	
	@GetMapping("/signup")
	public String signupGet(HttpServletRequest request, ModelMap modelMap) {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signupPost(HttpServletRequest request, ModelMap modelMap) {
		return "login";
	}
	
	@GetMapping("/login")
	public String loginGet(HttpServletRequest request, ModelMap modelMap) {
		return "login";
	}
	
	@PostMapping("/login")
	public String loginPost(HttpServletRequest request, ModelMap modelMap) {
		return "index";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request, ModelMap modelMap) {
		return "index";
	}
	
	@GetMapping("/documents/create")
	public String documentNew(HttpServletRequest request, ModelMap modelMap) {
		return "document-create";
	}
	
	@PostMapping("/documents/create")
	public String documentCreate(HttpServletRequest request, ModelMap modelMap) {
		return "document-create";
	}
	
	@GetMapping("/documents/edit")
	public String documentView(HttpServletRequest request, ModelMap modelMap) {
		return "document-edit";
	}
	
	@PostMapping("/documents/edit")
	public String documentEdit(HttpServletRequest request, ModelMap modelMap) {
		return "index";
	}
}
