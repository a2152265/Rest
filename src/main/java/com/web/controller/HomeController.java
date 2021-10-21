package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	public HomeController() {
		// TODO Auto-generated constructor stub
	}
	
	@GetMapping({"/","/home2"})
	public String index() {
		System.out.println("進入首頁");
		return "home2";
	}
	
	@GetMapping("/home")
	public String index1() {
		System.out.println("進入首頁");
		return "home";
	}
}
