package com.justekouassi.liberty.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.justekouassi.liberty.entities.Utilisateur;
import com.justekouassi.liberty.repositories.UtilisateurRepository;

@Service
public class UtilisateurServiceImpl implements UtilisateurService {

	@Autowired
	UtilisateurRepository utilisateurRepository;

	public UtilisateurServiceImpl() {

	}

	@Override
	public Utilisateur createUtilisateur(Utilisateur utilisateur) {
		return utilisateurRepository.save(utilisateur);
	}

	@Override
	public List<Utilisateur> readAllUtilisateurs() {
		return utilisateurRepository.findAll();
	}

	@Override
	public Utilisateur readUtilisateur(Long id) {
		return utilisateurRepository.findById(id).get();
	}

	@Override
	public Utilisateur updateUtilisateur(Utilisateur utilisateur) {
		return utilisateurRepository.save(utilisateur);
	}

	@Override
	public void deleteUtilisateur(Utilisateur utilisateur) {
		utilisateurRepository.delete(utilisateur);
	}

	@Override
	public void deleteUtilisateurById(Long id) {
		utilisateurRepository.deleteById(id);
	}

}
