package com.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.Book;
import com.web.model.Member;
import com.web.service.MemberService;

@Controller
public class Controller_login {

	
		MemberService memberService;
		
		
		@Autowired
		public Controller_login(MemberService memberService) {
			this.memberService = memberService;
		}

		@GetMapping("/login")
		public String gologin() {
			 return "login";
			 
		}
		
		@PostMapping("/login")
	    public ResponseEntity<String> processUserCheckAction(@RequestBody Member member){
			boolean status = memberService.checkUser(member);
			
			if(status) {
				System.out.println(status);
				return new ResponseEntity<String>("Y", HttpStatus.OK);
			}
			
			return new ResponseEntity<String>("N", HttpStatus.OK);
	    }
		
		@GetMapping("/register")
		public String register() {
			 return "register";
			 
		}
		
		@PostMapping("/register1")
	    public ResponseEntity<String> processAccount(@RequestBody Member member){
			boolean status = memberService.checkLogin(member);
			
			if(status) {
				System.out.println(status);
				return new ResponseEntity<String>("Y", HttpStatus.OK);
			}
			
			return new ResponseEntity<String>("N", HttpStatus.OK);
	    }
		
		
		
		@PostMapping(path = "/register") 
		public String insert(
				@RequestParam("username") String username,
				@RequestParam("account") String account, 
				@RequestParam("password2") String password,
				@RequestParam("emailAddress") String emailAddress, 
				@RequestParam("phone") String phone
				
				) {
			String status = "一般會員";
			Member member = new Member(username,account,password,emailAddress,phone,status);
			 memberService.insert(member);
			return "redirect:/registersuccess";
		}
		
		@GetMapping("/registersuccess")
		public String succes(){
			 return "registersuccess";
		}
		
		@GetMapping("/logut")
		public String logout() {
			 return "redirect:/home2";
			 
		}

}
