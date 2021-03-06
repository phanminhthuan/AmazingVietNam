package com.code.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.code.dao.BookRoomDAO;
import com.code.dao.HotelDAO;
import com.code.dao.LocationDAO;
import com.code.dao.RoomDAO;
import com.code.dao.UserDAO;
import com.code.model.BookRoom;
import com.code.model.Hotel;
import com.code.model.Location;
import com.code.model.Room;
import com.code.model.User;

@Controller
public class BookingController {
	@Autowired
	private HotelDAO hotelDAO;
	@Autowired
	private RoomDAO roomDAO;
	@Autowired
	private BookRoomDAO bookRoomDAO;
	@Autowired
	private LocationDAO locationDAO;
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String booking(Model model, 
			@RequestParam(name="hotelId", required=false, defaultValue="0") int hotelId) {
		List<Location> locations = locationDAO.findAll();
		Hotel hotel = null;
		List<Hotel> hotels= null;
		List<Room> rooms = null;
		
		if (hotelId != 0) {
			hotel = hotelDAO.findById(hotelId);
			hotels = hotelDAO.findByLocationId(hotel.getLocationId());
			rooms = roomDAO.findByHotelId(hotel.getId());
		}
		
		model.addAttribute("locations", locations);
		model.addAttribute("hotel", hotel);
		model.addAttribute("hotels", hotels);
		model.addAttribute("rooms", rooms);

		return "booking";
	}
	
	@RequestMapping(value = "/booking-success", method = RequestMethod.GET)
	public String bookingSuccess(Model model, int bookRoomId) {
		BookRoom bookRoom = bookRoomDAO.findById(bookRoomId);
		model.addAttribute("bookRoom", bookRoom);
		return "booking-success";
	}
	
	@RequestMapping(value = "/booking-get-hotels", method = RequestMethod.GET)
	@ResponseBody
	public List<Hotel> getHotel(int locationId) {
		if (locationId == 0) return null;
		List<Hotel> hotels = hotelDAO.findByLocationId(locationId);
		return hotels;
	}
	
	@RequestMapping(value = "/booking-get-rooms", method = RequestMethod.GET)
	@ResponseBody
	public List<Room> getByHotelId(String hotelId) {
		if (hotelId == null || hotelId.isEmpty()) return null;
		List<Room> rooms = roomDAO.findByHotelId(Integer.parseInt(hotelId));
		return rooms;
	}
	
	@RequestMapping(value = "/booking-get-room", method = RequestMethod.GET)
	@ResponseBody
	public Room getRoomById(String roomId) {
		if (roomId == null || roomId.isEmpty()) return null;
		Room room = roomDAO.findById(Integer.parseInt(roomId));
		return room;
	}

	@RequestMapping(value = "/booking-save", method = RequestMethod.POST)
	@ResponseBody
	public String BookingSave(@RequestBody Map<String, String> payload) {
		BookRoom model = new BookRoom();
		model.setUserId(Integer.parseInt(payload.get("user_id")));
		model.setRoomId(Integer.parseInt(payload.get("room_id")));
		model.setHotelId(Integer.parseInt(payload.get("hotel_id")));
		model.setAmountPeople(Integer.parseInt(payload.get("amount_people")));
		model.setDeleted(false);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	    try {
			Date dateCheckInDate = formatter.parse(payload.get("check_in_date"));
			model.setCheckInDate(dateCheckInDate);
			Date dateCheckOutDate = formatter.parse(payload.get("check_out_date"));
			model.setCheckOutDate(dateCheckOutDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	    
	    User user = userDAO.findByPhoneNumber(payload.get("phone_number"));
	    if(user == null) {
	    	user = new User();
	    	user.setFullName(payload.get("full_name"));
	    	user.setPhoneNumber(payload.get("phone_number"));
	    	user.setPassword("123456");
	    	user.setEmail("thuan2511@gmail.com");
	    	user.setUserName(payload.get("full_name").replace(' ', '_'));
	    	user.setStatus(true);
	    	user.setAddress("");
	    	userDAO.save(user);

	    }else {
	    	user.setFullName(payload.get("full_name"));
	    	userDAO.update(user);
	    }
    	model.setUserId(user.getId());	   
	    
	    
	    List<BookRoom> bookRooms = bookRoomDAO.checkBooking(model);
	    if(bookRooms.size() == 0){
	    	bookRoomDAO.save(model);
	    	return String.valueOf(model.getId());
	    }
	    
	    return "fail";
	}
}
