package com.code.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;

import com.code.dao.BookRoomDAO;
import com.code.dao.HotelDAO;
import com.code.dao.RoomDAO;
import com.code.model.BookRoom;
import com.code.model.Hotel;
import com.code.model.Room;

@Controller
public class BookingController {
	@Autowired
	private HotelDAO hotelDAO;
	@Autowired
	private RoomDAO roomDAO;
	@Autowired
	private BookRoomDAO bookRoomDAO;
	
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String booking() {
		return "booking";
	}
	
	@RequestMapping(value = "/booking-success", method = RequestMethod.GET)
	public String bookingSuccess() {
		return "booking-success";
	}
	
	@RequestMapping(value = "/booking-get-hotels", method = RequestMethod.GET)
	@ResponseBody
	public List<Hotel> getHotel(String location) {
		if (location == null || location.isEmpty()) return null;
		List<Hotel> hotels = hotelDAO.findByLocation(location);
		return hotels;
	}
	
	@RequestMapping(value = "/booking-get-rooms", method = RequestMethod.GET)
	@ResponseBody
	public List<Room> getByHotelId(String hotelId) {
		if (hotelId == null || hotelId.isEmpty()) return null;
		List<Room> rooms = roomDAO.findByHotelId(Integer.parseInt(hotelId));
		return rooms;
	}

	@RequestMapping(value = "/booking-save", method = RequestMethod.POST)
	@ResponseBody
	public String BookingSave(BookRoom model) {
		bookRoomDAO.save(model);
		return "success";
	}
}
