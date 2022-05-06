package com.code.model;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book_rooms")
public class BookRoom {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "room_id")
	private int roomId;

	@Column(name = "user_id")
	private int userId;
	
	@Column(name = "hotel_id")
	private int hotelId;
	
	@Column(name = "amount_people")
	private int amountPeople;
	
	@Column(name = "check_in_date")
	private Date checkInDate;

	@Column(name = "check_out_date")
	private Date checkOutDate;

	public BookRoom() {
	}

	public BookRoom(int id, int roomId, int userId, int hotelId, int amountPeople, Date checkInDate, Date checkOutDate
			) {
		this.id = id;
		this.roomId = roomId;
		this.userId = userId;
		this.hotelId = hotelId;
		this.amountPeople = amountPeople;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	
	public int getAmountPeople() {
		return amountPeople;
	}
	public void setAmountPeople(int amountPeople) {
		this.amountPeople = amountPeople;
	}
	
	public Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(Date localDate) {
		this.checkInDate = localDate;
	}
	
	public Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	
}