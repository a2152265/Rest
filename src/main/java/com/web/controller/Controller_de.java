package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.web.model.Book;
import com.web.service.BookService;
import com.web.service.MemberService;


@Controller
public class Controller_de {

	public Controller_de() {	
	}
	
	MemberService memberService;
	BookService bookservice;
	@Autowired
	public Controller_de(MemberService memberService, BookService bookservice) {
		this.memberService = memberService;
		this.bookservice = bookservice;
	}
	
	
	
	
	
	
	
	
	@GetMapping("/deleteByName")
	public String deleteByname(Model model) {
		Book book =new Book();
		model.addAttribute("bookData",new Book());
		return "deletebyname";
	}
	

	@PostMapping("/deleteByName")
	public String processDeleteByname(
			@ModelAttribute("bookData") Book book,
//			@RequestBody Book book2,
			Model model
			) {
		System.out.println(" processDeleteByname id -----getBookname---->"+book.getBookname());
		System.out.println(" processDeleteByname id -----getId---->"+book.getId());

		
		bookservice.deleteByName(book.getBookname());
		
		System.out.println("processDeleteByname方法結束");	
		return "deleteSuccess";
	}
	
	
	@PostMapping("/userscheck.controller")
    public ResponseEntity<String> processUserChcekAction(
    		@RequestBody Book book){

		System.out.println("-@RequestBody-----------book.getBookname()------->"+book.getBookname());
		boolean status = bookservice.checkName(book.getBookname());
		System.out.println(" bookservice.checkName做完了---->"+status);
		if(status==true) {
			
			bookservice.deleteByName(book.getBookname());
			System.out.println("成功check bookname 並刪除xxxxxxxxxxxxxxxxxxxxxxxxxx");
			return new ResponseEntity<String>("Y", HttpStatus.OK);
		}
		
		return new ResponseEntity<String>("N", HttpStatus.OK);
    }
	
	
	
	
	@GetMapping("/deleteById")
	public String deleteById(Model model) {
		
		model.addAttribute("bookData",new Book());
		return "deletebyid";
	}
	
	@PostMapping("/deleteById")
	public String processDeleteById(
			@ModelAttribute("bookData") Book book,
			Model model
			) {
		Book book2 =new Book();
		Boolean check=true;
		System.out.println("process deleteby id -----getBookname---->"+book.getBookname());
		System.out.println("process deleteby id -----getId---->"+book.getId());

		bookservice.deleteById(book.getId());
		System.out.println("deleteById方法結束");
		if (check==true) {
			System.out.println("刪除後回傳true");
			return "deleteSuccess";
		}else {
			return "deletebyid";			
		}
	}
	
	
	
	
	
	

}
