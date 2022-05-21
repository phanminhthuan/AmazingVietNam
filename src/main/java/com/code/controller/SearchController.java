package com.code.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String search(Model model, String locationName, 
			@RequestParam(name="locationId",required=false, defaultValue="0") int locationId) {
		List<Location> locations = new ArrayList<Location>();
		if(locationName != null) {
			String decode = locationName;
			try {
				decode = URLDecoder.decode(locationName, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
			locations = locationDAO.findByName(decode);
		} else if(locationId != 0) {
			locations.add(locationDAO.findById(locationId));
		}
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
