package com.code.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.code.dao.BookRoomDAO;
import com.code.model.BookRoom;

@Controller
public class BookingInfoController {
	@Autowired
	private BookRoomDAO bookRoomDAO;
	
	@RequestMapping(value = "/booking-info", method = RequestMethod.GET)
	public String index(Model model) {
		List<BookRoom> bookRooms = bookRoomDAO.findAll();
		model.addAttribute("bookRooms", bookRooms);
		return "booking-info";
	}
	
	@RequestMapping(value = "/booking-info-delete", method = RequestMethod.GET)
	public String index(String id) {
		BookRoom bookRoom = bookRoomDAO.findById(Integer.parseInt(id));
		bookRoomDAO.delete(bookRoom);
		return "redirect:booking-info";
	}
}