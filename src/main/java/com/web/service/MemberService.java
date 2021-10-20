package com.web.service;

import java.util.List;

import com.web.model.Book;
import com.web.model.Member;

public interface MemberService {
	
	public Member insert(Member mBean);
	public boolean checkAccount(String account);
	public List<Member> selectAll();
    public Member update(int userid, String username);
    public boolean deleteById(int id);
    public boolean  checkUser(String account,String password);
}
