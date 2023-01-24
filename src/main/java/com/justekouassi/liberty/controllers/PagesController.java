package com.justekouassi.liberty.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.justekouassi.liberty.entities.Document;
import com.justekouassi.liberty.service.DocumentServiceImpl;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class PagesController {

	@Autowired
	private DocumentServiceImpl documentService;

	@GetMapping("/")
	public String index(HttpServletRequest request, Model model) {
		List<Document> documents = documentService.readAllDocuments();
		request.setAttribute("documents", documents);
		return "index";
	}

	@GetMapping("/signup")
	public String signupGet(HttpServletRequest request) {
		return "signup";
	}

	@PostMapping("/signup")
	public String signupPost(HttpServletRequest request) {
		return "login";
	}

	@GetMapping("/login")
	public String loginGet(HttpServletRequest request) {
		return "login";
	}

	@PostMapping("/login")
	public String loginPost(HttpServletRequest request) {
		return "index";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		return "index";
	}

	@GetMapping("/documents/create")
	public String documentNew(HttpServletRequest request) {
		return "document-create";
	}

	@PostMapping("/documents/create")
	public String documentCreate(HttpServletRequest request) {
		return "document-create";
	}

	@GetMapping("/documents/edit")
	public String documentView(HttpServletRequest request) {
		return "document-edit";
	}

	@PostMapping("/documents/edit")
	public String documentEdit(HttpServletRequest request) {
		return "index";
	}
}
