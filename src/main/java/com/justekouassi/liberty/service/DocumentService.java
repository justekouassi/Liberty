package com.justekouassi.liberty.service;

import java.util.List;

import com.justekouassi.liberty.entities.Document;

public interface DocumentService {
	Document createDocument(Document document);

	List<Document> readAllDocuments();

	Document readDocument(Long id);

	Document updateDocument(Document document);

	void deleteDocument(Document document);

	void deleteDocumentById(Long id);
}
