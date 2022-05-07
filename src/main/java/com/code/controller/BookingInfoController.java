package com.code.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.code.dao.BookRoomDAO;
import com.code.dao.HotelDAO;
import com.code.dao.RoomDAO;
import com.code.model.BookRoom;

@Controller
public class BookingInfoController {
	@Autowired
	private HotelDAO hotelDAO;
	@Autowired
	private RoomDAO roomDAO;
	@Autowired
	private BookRoomDAO bookRoomDAO;
	
	@RequestMapping(value = "/booking-info", method = RequestMethod.GET)
	public String index(Model model) {
		List<BookRoom> bookRooms = bookRoomDAO.findAll();
		model.addAttribute("bookRooms", bookRooms);
		return "booking-info";
	}
}