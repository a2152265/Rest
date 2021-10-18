package com.web.dao;

import java.util.List;

import com.web.model.Book;



public interface BookDao {
	public Book insert(Book boook);
	public List<Book> selectLikeName(String name);
	public List<Book> selectAll();
    public Book update(Book book);
    public boolean deleteById(int id);
    public List<Book> deleteByName(String name);
    public boolean checkName(String name);
}
