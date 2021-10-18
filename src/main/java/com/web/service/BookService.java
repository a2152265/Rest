package com.web.service;

import java.util.List;

import com.web.model.Book;


public interface BookService {

	public Book insert(Book book);
	public List<Book> selectLikeName(String name);
	public List<Book> selectAll();
    public Book update(Book book);
    public boolean deleteById(int bookid);
    public List<Book> deleteByName(String name);
	
}
