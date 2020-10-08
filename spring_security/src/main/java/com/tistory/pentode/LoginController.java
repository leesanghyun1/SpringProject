package com.tistory.pentode;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.Authentication;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/loginForm.do", method = RequestMethod.GET)
	public String loginFor(Locale locale, Model model) {
		logger.info("Welcome Login Form!");
		
		return "loginForm";
	}
	
	@RequestMapping(value = "/login/accessDenied.do", method = RequestMethod.GET)
	public String accessDenied(Locale locale, Model model) {
		logger.info("Welcome Access Denied!");
		
		return "login/accessDenied";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		logger.info("register page!");
		
		return "register";
	}

	
}
