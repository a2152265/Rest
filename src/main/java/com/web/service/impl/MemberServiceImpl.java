package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.MemberDao;
import com.web.dao.impl.MemberDaoImpl;
import com.web.model.Member;
import com.web.service.MemberService;

@Transactional
@Service
public class MemberServiceImpl implements MemberService{
	
	MemberDao memberdao;
	
	@Autowired
	public MemberServiceImpl(MemberDao memberdao) {
		this.memberdao = memberdao;
	}


	@Override
	public Member insert(Member mBean) {
		// TODO Auto-generated method stub
		return memberdao.insert(mBean);
	}


	@Override
	public boolean checkAccount(String account) {
		// TODO Auto-generated method stub
		return memberdao.checkAccount(account);
	}

	@Override
	public List<Member> selectAll() {
		// TODO Auto-generated method stub
		return memberdao.selectAll();
	}

	@Override
	public Member update(int userid, String username) {
		// TODO Auto-generated method stub
		return memberdao.update(userid, username);
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		System.out.println("service impl go");
		return memberdao.deleteById(id);
	}

//	@Override
//	public boolean checkUser(String account, String password) {
//		// TODO Auto-generated method stub
//		return memberdao.checkUser(account, password);
//	}

	@Override
	public boolean checkLogin(Member member) {
		
		return memberdao.checkLogin(member);
	}
	
	@Override
	public boolean checkUser(Member member) {
		// TODO Auto-generated method stub
		return memberdao.checkUser(member);
	}

}
