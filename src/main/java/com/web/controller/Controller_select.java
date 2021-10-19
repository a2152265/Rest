package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.Book;
import com.web.service.BookService;

@Controller
public class Controller_select {

	@Autowired
	private BookService bookService;
	
	@GetMapping("/findByBookname")
	public String findByBookname() {
		return "select";
	}
	
	@GetMapping("/getAll")
	public String getAll() {
		return "selectall";
	}
	
	
	@GetMapping(path = "/findAll") 
	@ResponseBody
	public List<Book> findAllAction() {
		return bookService.selectAll();
	}
	
	
	@GetMapping(path = "/findAllByBookname") 
	@ResponseBody
	public List<Book> processBookQueryBynameAction(String bookname) {
		return bookService.selectLikeName(bookname);
	}

	
}
