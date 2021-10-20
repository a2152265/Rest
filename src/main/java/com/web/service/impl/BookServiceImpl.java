package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.BookDao;
import com.web.model.Book;
import com.web.service.BookService;


@Transactional
@Service
public class BookServiceImpl implements BookService{

	public BookServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	BookDao bookdao;
	
	@Autowired
	public BookServiceImpl(BookDao bookdao) {
		this.bookdao = bookdao;
	
	}

	@Override
	public Book insert(Book boook) {
		// TODO Auto-generated method stub
		return bookdao.insert(boook);
	}

	@Override
	public List<Book> selectLikeName(String name) {
		// TODO Auto-generated method stub
		return bookdao.selectLikeName(name);
	}

	@Override
	public List<Book> selectAll() {
		// TODO Auto-generated method stub
		return bookdao.selectAll();
	}

	@Override
	public Book update(Book book) {
		// TODO Auto-generated method stub
		return bookdao.update(book);
	}

	@Override
	public boolean deleteById(int bookid) {
		// TODO Auto-generated method stub
		return bookdao.deleteById(bookid);
	}

	@Override
	public List<Book> deleteByName(String name) {
		// TODO Auto-generated method stub
		return bookdao.deleteByName(name);
	}

	@Override
	public boolean checkName(String name) {
		// TODO Auto-generated method stub
		return bookdao.checkName(name);
	}

	@Override
	public Book selectById(int bookid) {
		
		return bookdao.selectById(bookid);
	}
	

}
