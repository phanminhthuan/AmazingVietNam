package com.code.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "room_types")
public class RoomType {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	private String name;
	
	@Column(name = "unit_price")
	private float unitPrice;
	
	@Column(name = "amount_people")
	private int amountPeople;
	
	@Column(name = "amount_bed")
	private int amountBed;

	public RoomType() {
	}

	public RoomType(int id, String name, float unitPrice, int amountPeople, int amountBed) {
		this.id = id;
		this.name = name;
		this.unitPrice = unitPrice;
		this.amountPeople = amountPeople;
		this.amountBed = amountBed;
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

	public float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	public int getAmountPeople() {
		return amountPeople;
	}
	public void setAmountPeople(int amountPeople) {
		this.amountPeople = amountPeople;
	}
	
	public int getAmountBed() {
		return amountBed;
	}
	public void setAmountBed(int amountBed) {
		this.amountBed = amountBed;
	}
}