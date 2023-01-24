package com.justekouassi.liberty.service;

import java.util.List;

import com.justekouassi.liberty.entities.Utilisateur;

public interface UtilisateurService {
	Utilisateur createUtilisateur(Utilisateur utilisateur);

	List<Utilisateur> readAllUtilisateurs();

	Utilisateur readUtilisateur(Long id);

	Utilisateur updateUtilisateur(Utilisateur utilisateur);

	void deleteUtilisateur(Utilisateur utilisateur);

	void deleteUtilisateurById(Long id);
}
