package com.code.model;

import java.text.DecimalFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rooms")
public class Room {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	private String name;
	
	@Column(name = "hotel_id")
	private int hotelId;
	
	@Column(name = "status")
	private Boolean status;	
	
	@Column(name = "room_type")
	private String roomType;
	
	@Column(name = "price")
	private Double price;
	
	@Column(name = "image_url")
	private String imageUrl;
	
	public Room() {
	}

	public Room(int id, String name,int hotelId, Boolean status, String roomType, Double price, String imageUrl ) {
		this.id = id;
		this.name = name;
		this.hotelId = hotelId;
		this.status = status;
		this.roomType = roomType;
		this.price = price;
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
	
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	
	public Double getPrice() {
		return price;
	}
	public void setFloorId(Double price) {
		this.price = price;
	}
	
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	public String getPriceFormat(Double price) {
		 DecimalFormat df = new DecimalFormat("0");
		 return df.format(price);
	}
}