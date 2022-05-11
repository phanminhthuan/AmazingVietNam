package com.code.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.code.dao.HotelDAO;
import com.code.dao.LocationDAO;
import com.code.model.Hotel;
import com.code.model.Location;

@Controller
public class SearchController {
	@Autowired
	private HotelDAO hotelDAO;
	@Autowired
	private LocationDAO locationDAO;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(String locationName, Model model) {
		String decode = locationName;
		try {
			decode = URLDecoder.decode(locationName, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(decode);
		List<Location> locations = locationDAO.findByName(decode);
		List<Hotel> hotels =  null;
		
		if (locations.size() == 0) {
			model.addAttribute("hotels", hotels);
		} else {
			hotels = hotelDAO.findByLocationId(locations.get(0).getId());
		}
		model.addAttribute("hotels", hotels);
		return "search";
	}

}
