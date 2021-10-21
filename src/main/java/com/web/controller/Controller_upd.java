package com.web.controller;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.Book;
import com.web.service.BookService;

@Controller
public class Controller_upd {
	
	BookService bookservice;
	
	@Autowired
	public Controller_upd(BookService bookservice) {
		this.bookservice = bookservice;
	}


	public Controller_upd() {

	}
	
	@GetMapping("/getupdate")
	public String getupdate(){
		
		return "update";
	}
	
	@GetMapping("/updatesuccess")
	public String success(){
		
		return "updateSuccess";
	}
	
	
	@GetMapping(path ="/update1")
	@ResponseBody
	public ResponseEntity<Book> update(String id){
		Integer bookId= Integer.parseInt(id);
		 Book book = bookservice.selectById(bookId);
		 if(book != null) {
			 return new ResponseEntity<Book>(book,HttpStatus.OK);
		 }
		 return new ResponseEntity<Book>(book,HttpStatus.BAD_REQUEST);
	}
	

	
	
//	@PostMapping(path ="/getupdate")
//	@ResponseBody
//	public ResponseEntity<Book> updateForm(
//			@RequestParam("id1") Integer id,
//			@RequestParam("name") String name,
//			@RequestParam("author") String author,
//			@RequestParam("price") Integer price
//			){
//		
//		
//		Book book =new Book(id,name,author,price);
//		
//		Book update = bookservice.update(book);
//		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!");
//		if(update != null) {
//			return new ResponseEntity<Book>(update,HttpStatus.OK);
//		}
//			return new ResponseEntity<Book>(update,HttpStatus.BAD_REQUEST);
//		
//	}
	
	
	@PostMapping(path ="/getupdate")
	public String updateForm(
			@RequestParam("id1") Integer id,
			@RequestParam("name") String name,
			@RequestParam("author") String author,
			@RequestParam("price") Integer price
			){
		
		
		Book book =new Book(id,name,author,price);
		
		Book update = bookservice.update(book);
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!");
		return "redirect:/updatesuccess";
		
		
	}
	
}
