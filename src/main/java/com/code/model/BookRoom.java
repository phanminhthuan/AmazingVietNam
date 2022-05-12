package com.code.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
	
	@Column(name = "deleted")
	private Boolean deleted;	

	@ManyToOne(optional=false)
	@JoinColumn(name = "hotel_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Hotel hotel;
	 
	public Hotel getHotel() {
		return hotel;
	}
	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	
	@ManyToOne(optional=false)
	@JoinColumn(name = "room_id", referencedColumnName = "id", insertable = false, updatable = false)
	private Room room;
	 
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}

	public BookRoom() {
	}

	public BookRoom(int id, int roomId, int userId, int hotelId, int amountPeople, Date checkInDate, 
			Date checkOutDate, Boolean deleted) {
		this.id = id;
		this.roomId = roomId;
		this.userId = userId;
		this.hotelId = hotelId;
		this.amountPeople = amountPeople;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.deleted = deleted;
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
	
	public Boolean getDeleted() {
		return deleted;
	}
	public void setDeleted(Boolean deleted) {
		this.deleted = deleted;
	}
	
	public String getFormatDate(Date date) {
		 SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
	     return dt.format(date);
	}
	
	public long getNumberDays() {
		long diff =  this.checkOutDate.getTime() - this.checkInDate.getTime();

        TimeUnit time = TimeUnit.DAYS; 
        return time.convert(diff, TimeUnit.MILLISECONDS);
	}
}