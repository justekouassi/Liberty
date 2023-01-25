package com.justekouassi.liberty.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.justekouassi.liberty.entities.Document;
import com.justekouassi.liberty.service.DocumentServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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

	@GetMapping("/documents/create")
	public String documentNew(HttpServletRequest request) {
		return "document-create";
	}

	@PostMapping("/documents/create")
	public String documentCreate(@RequestParam("file") MultipartFile file, HttpServletRequest request)
			throws IOException {
		String titre = request.getParameter("titre");
		String description = request.getParameter("description");
		Date date = new Date();
		byte[] bytes = file.getBytes();

		Document document = new Document(titre, description, date, bytes);
		documentService.createDocument(document);
		return "document-create";
	}

	@GetMapping("/documents/edit/{id}")
	public ModelAndView documentView(@PathVariable("id") long id) {
		Document document = documentService.readDocument(id);
		ModelAndView mav = new ModelAndView("document-edit");
		mav.addObject("document", document);
		return mav;
	}

	@PostMapping("/documents/edit/{id}")
	public String documentEdit(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {
		String titre = request.getParameter("titre");
		String description = request.getParameter("description");
		Date date = new Date();
		byte[] bytes = file.getBytes();

		Document document = new Document(titre, description, date, bytes);
		documentService.updateDocument(document);
		return "index"; // TODO
	}

	@GetMapping("/documents/delete/{id}")
	public ModelAndView documentDelete(@PathVariable("id") long id) {
		documentService.deleteDocumentById(id);
		ModelAndView mav = new ModelAndView("index");
		return mav; // TODO
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
}
