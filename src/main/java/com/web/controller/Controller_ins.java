package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.Book;
import com.web.service.BookService;
import com.web.service.MemberService;



@Controller
public class Controller_ins {

	BookService bookservice;
//	
//	private ProfilesDao pDao;
//	public Controller_ins() {
//		@PostMapping(path = "/profiles") @ResponseBody
//		public String processProfilesInsertAction(@RequestParam("userName") String userName, @RequestParam("userAddress") String userAddress,
//				                                 @RequestParam("userPhone") String userPhone) {
//			Profiles profiles = new Profiles(userName, userAddress, userPhone);
//			pDao.insert(profiles);
//			return "Insert OK";
//		}
	@Autowired
	public Controller_ins( BookService bookservice) {
		this.bookservice = bookservice;
	}
	
	@GetMapping("/insert")
	public String goinsert() {

		 return "insert";
		 
	}
	@GetMapping("/insertsuccess")
	public String succes(){

		 return "insertsuccess";
		 
	}


	
	@PostMapping(path = "/insert.controller") @ResponseBody
	public String insert(
			@RequestParam("bookname") String bookname,
			@RequestParam("author") String author, 
			@RequestParam("price") Integer price 			
			) {
		
		Book book = new Book(bookname,author,price);
		bookservice.insert(book);
		return "redirect:/insertsuccess";
	}
	
	
	}

//}
