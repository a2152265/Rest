package com.web.dao.impl;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.BookDao;
import com.web.model.Book;







@Repository
public class BookDaoImpl implements BookDao {
	
	SessionFactory factory;
	
	@Autowired
	public BookDaoImpl(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public Book insert(Book book) {
		Session session = factory.getCurrentSession();
//		System.out.println("book = "+book.getBookname());

		Book bBean = new Book();
		bBean.setBookname(book.getBookname());
		bBean.setAuthor(book.getAuthor());
		bBean.setPrice(book.getPrice());
		session.save(bBean);
		
		
		return book;	
		
	}

	@Override

	public List<Book> selectAll() {
		Session session = factory.getCurrentSession();
		Query<Book> query = session.createQuery("from Book", Book.class);
		return query.list();
	}

	public Book selectById(int bookid) {
		Session session = factory.getCurrentSession();
		return session.get(Book.class, bookid);

	}

	@Override
	public List<Book> selectLikeName(String name) {
		Session session = factory.getCurrentSession();
		Query<Book> query = session.createQuery("from Book where bookname like '%"+name+"%'", Book.class);
		return query.list();
	}

	@Override
	public Book update(Book book) {
		
		Session session = factory.getCurrentSession();
		String hql="update Book set bookname=:bname,author=:bauthor,price=:bprice where id=:bid";

		Query query = session.createQuery(hql);
		query.setParameter("bname", book.getBookname());
		query.setParameter("bauthor", book.getAuthor());
		query.setParameter("bprice", book.getPrice());
		query.setParameter("bid", book.getId());
		
		int count = query.executeUpdate();
		if(count>0) {
			return book;
		}
			return null;
		
		
	}

	@Override
	public boolean deleteById(int id) {   //用ID刪除.

		Session session = factory.getCurrentSession();
			Book bBean = new Book();
			bBean.setId(id);		
			System.out.println("DAO-----id=====>"+id);
			session.delete(bBean);
			System.out.println("刪除成功");
//			session.getTransaction().commit();
		return true;
	}
	
	@Override
	public List<Book> deleteByName(String name) {   //用書名刪除 已成功
		Session session = factory.getCurrentSession();
		System.out.println("正在執行Delete By Name方法 1");
		Query<Book> query = session.createQuery("from Book where bookname like '%"+name+"%'", Book.class);
		System.out.println("正在執行Delete By Name方法 2");
		List<Book> list = query.list();
		System.out.println("正在執行Delete By Name方法 3");
		 for(Book book: list) {
		 System.out.println("id:" + book.getId());
		 System.out.println("name:" + book.getBookname());
		   //先用name查找出ID 再用ID刪
			int bookId=book.getId();		
			 session.delete(book);
			 System.out.println("刪除成功");
		 
		 }

		return query.list();
	}

}
