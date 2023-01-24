package com.justekouassi.liberty.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.justekouassi.liberty.entities.Document;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Long> {

}
