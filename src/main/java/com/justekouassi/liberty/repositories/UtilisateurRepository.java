package com.justekouassi.liberty.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.justekouassi.liberty.entities.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Long> {

}
