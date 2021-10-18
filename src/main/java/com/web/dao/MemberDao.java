package com.web.dao;

import java.util.List;


import com.web.model.Member;

public interface MemberDao {
	public Member insert(Member mBean);
	public boolean checkAccount(String account);
	public List<Member> selectAll();
    public Member update(int userid, String username);
    public boolean deleteById(int userid);
    public boolean  checkUser(String account,String password);
}
