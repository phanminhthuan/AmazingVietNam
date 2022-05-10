package com.code.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "locations")
public class Location {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	private String name;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "star")
	private Integer star;	
	
	@Column(name = "image_url")
	private String imageUrl;
	
	public Location() {
	}

	public Location(int id, String name,String description, Integer star, String imageUrl) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.star = star;
		this.imageUrl = imageUrl;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getStar() {
		return star;
	}
	public void setStar(int getStar) {
		this.star = getStar;
	}
	
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	public String getStarClass(int star) {
		return this.getStar() < star ? "far": "fas"; 
	}
}