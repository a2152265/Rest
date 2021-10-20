package com.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="member")
public class Member {
	
	@Id @Column(name="USERID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userid;
	
	@Column(name="USERNAME")
	private String username;
	
	@Column(name="ACCOUNT")
	private String account;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="EMAILADDRESS")
	private String emailAddress;
	
	@Column(name="PHONE")
	private String phone;
	
	@Column(name="STATUS")
	private String status;
	
	public Member() {
	}
	
	public Member(String account, String password) {
		
	}
	
	
	public Member(String username, String account, String password, String emailAddress, String phone) {
		super();
		this.username = username;
		this.account = account;
		this.password = password;
		this.emailAddress = emailAddress;
		this.phone = phone;
	}

	public Member( String username, String account, String password, String emailAddress, String phone,
			String status) {
		super();
		
		this.username = username;
		this.account = account;
		this.password = password;
		this.emailAddress = emailAddress;
		this.phone = phone;
		this.status = status;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	
}
