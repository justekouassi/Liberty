package com.justekouassi.liberty.entities;

import java.util.Date;

import org.springframework.data.annotation.CreatedDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "document")
public class Document {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String titre;

	@Column(nullable = false)
	private String description;

	@CreatedDate
	private Date dateCreation;

	@Lob
  private byte[] data;

	@ManyToOne
	@JoinColumn(name = "idutilisateur")
	private Utilisateur auteur;

	public Document() {
		super();
	}

	public Document(String titre, String description, Date dateCreation, byte[] data) {
		super();
		this.titre = titre;
		this.description = description;
		this.dateCreation = dateCreation;
		this.data = data;
	}

	public Document(String titre, String description) {
		super();
		this.titre = titre;
		this.description = description;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Document [id = " + id + ", titre = " + titre + ", description = " + description + ", dateCreation = "
				+ dateCreation + "]";
	}

}
