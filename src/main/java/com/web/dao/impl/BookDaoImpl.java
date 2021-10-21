package com.web.dao.impl;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;

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

////		Book bBean = new Book();
//		book.setBookname(book.getBookname());
//		book.setAuthor(book.getAuthor());
//		book.setPrice(book.getPrice());
		session.save(book);
		
		
		return book;	
		
	}

	@Override
	public List<Book> selectAll() {
		Session session = factory.getCurrentSession();
		Query<Book> query = session.createQuery("from Book", Book.class);
		return query.list();
//		String hql ="FROM Book";
//		 return session.createQuery(hql,Book.class)
//				    .getResultList();
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
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!"+book);
		session.saveOrUpdate(book);
		
		return book;

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
//			int bookId=book.getId();		
			 session.delete(book);
			 System.out.println("刪除成功");
		 
		 }

		return query.list();
	}

	@Override
	public boolean checkName(String name) {
		
		Session session = factory.getCurrentSession();
		System.out.println("name");
		
		Book bBean = new Book();
		bBean.setBookname(name);
		
		
		
		String hql = "select bookname from Book b where b.bookname=:bookname";
		
		try {
			Query query = session.createQuery(hql);
			query.setParameter("bookname", name);
			System.out.println("createQuery 結束");
			query.getSingleResult();
			System.out.println("Book  resultBean.getBookname()"+query.getSingleResult());
			
			if(query.getSingleResult()!=null) {
				return true;
			}
			
		} catch (NoResultException e) {
			System.out.println("沒帳號拉");
			return false;		
		}catch (NonUniqueResultException  e) {
			System.out.println("多筆帳號拉");
			return false;		
		}
		
		
		
		
		return false;		
	}

}
