package com.web.model;

	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;
	import javax.persistence.Table;

	@Entity @Table(name = "book")
	public class Book {
		
		@Id @Column(name = "ID")
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer id;
		
		@Column(name = "BOOKNAME")
		private String bookname;
		
		@Column(name = "AUTHOR")
		private String author;
		
		@Column(name = "PRICE")
		private Integer price;

		
		public Book( String bookname, String author, Integer price) {
		

			this.bookname = bookname;
			this.author = author;
			this.price = price;
		}

		public Book() {}
		public Book(Integer id, String bookname, String author, Integer price) {
			this.id = id;
			this.bookname = bookname;
			this.author = author;
			this.price = price;
		}
		

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getBookname() {
			return bookname;
		}

		public void setBookname(String bookname) {
			this.bookname = bookname;
		}

		public String getAuthor() {
			return author;
		}

		public void setAuthor(String author) {
			this.author = author;
		}

		public Integer getPrice() {
			return price;
		}

		public void setPrice(Integer price) {
			this.price = price;
		}
	
	
}
