package com.code.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.code.dao.LocationDAO;
import com.code.model.Location;

@Controller
public class HomeController {
	@Autowired
	private LocationDAO locationDAO;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Location> locations = locationDAO.findAll();
		model.addAttribute("locations", locations);
		
		ArrayList<Integer> stars = new ArrayList<Integer>();
	    stars.add(1);
	    stars.add(2);
	    stars.add(3);
	    stars.add(4);
	    stars.add(5);
		model.addAttribute("stars", stars);
		return "home";
	}

}
