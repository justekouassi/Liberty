package com.justekouassi.liberty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.justekouassi.liberty.entities.Document;
import com.justekouassi.liberty.repositories.DocumentRepository;

@Service
public class DocumentServiceImpl implements DocumentService {

	@Autowired
	DocumentRepository documentRepository;
	
	public DocumentServiceImpl() {
		
	}

	@Override
	public Document createDocument(Document document) {
		return documentRepository.save(document);
	}

	@Override
	public List<Document> readAllDocuments() {
		return documentRepository.findAll();
	}

	@Override
	public Document readDocument(Long id) {
		return documentRepository.findById(id).get();
	}

	@Override
	public Document updateDocument(Document document) {
		return documentRepository.save(document);
	}

	@Override
	public void deleteDocument(Document document) {
		documentRepository.delete(document);
	}

	@Override
	public void deleteDocumentById(Long id) {
		documentRepository.deleteById(id);
	}
}
