package com.code.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Login2Controller {

	@RequestMapping(value = "/login2", method = RequestMethod.GET)
	public String login2() {
		return "login2";
	}

}
