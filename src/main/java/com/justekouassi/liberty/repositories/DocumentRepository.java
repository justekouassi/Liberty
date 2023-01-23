package com.justekouassi.liberty.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.justekouassi.liberty.entities.Document;

public interface DocumentRepository extends JpaRepository<Document, Long> {

}
