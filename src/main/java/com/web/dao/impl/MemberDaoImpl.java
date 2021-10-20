package com.web.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.MemberDao;
import com.web.model.Member;




@Repository
public class MemberDaoImpl implements MemberDao {
	
	SessionFactory factory;
	@Autowired
	public MemberDaoImpl(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public Member insert(Member member) {
		Session session = factory.getCurrentSession();
//		Member mBean = new Member();
//		mBean.setUsername(member.getUsername());
//		mBean.setAccount(member.getAccount());
//		mBean.setPassword(member.getPassword());
//		mBean.setEmailAddress(member.getEmailAddress());
//		mBean.setPhone(member.getPhone());
//		mBean.setStatus(member.getStatus());
		session.save(member);
//		session.getTransaction().commit();
		return member;
	}

	@Override
	public boolean checkAccount(String account) {
		Session session = factory.getCurrentSession();
		Query<Member> query=session.createQuery("from Member where account=:account",Member.class);
		query.setParameter("account", account);
		Member resultBean =query.uniqueResult();
		if(resultBean!=null) {
			return true;
		}
		return false;
	}

	@Override
	public List<Member> selectAll() {
		Session session = factory.getCurrentSession();
		Query<Member> query = session.createQuery("from Member", Member.class);
		return query.list();
	}

	@Override
	public Member update(int userid, String username) {
		Session session = factory.getCurrentSession();
		Member resultBean = session.get(Member.class, userid);
		
		if(resultBean!=null) {
			resultBean.setUsername(username);
		}
		
		return resultBean;
	}

	@Override
	public boolean deleteById(int userid) {
		Session session = factory.getCurrentSession();
		Member resultBean = session.get(Member.class, userid);
		    
		    if(resultBean!=null) {
		    	session.delete(resultBean);
		    	return true;
		    }
		    
		    return false;
		
	}

//	@Override
//	public boolean checkUser(String account, String password) {
//		Session session = factory.getCurrentSession();
//		Query<Member> query=session.createQuery("from Member where account=:account and password=:password",Member.class);
//		query.setParameter("account", account);
//		query.setParameter("password", password);
//		Member resultBean =query.uniqueResult();
//		if(resultBean!=null) {
//			return true;
//		}
//		return false;
//	}
	
	@Override
	public boolean checkUser(Member member) {
		Session session = factory.getCurrentSession();
		Query<Member> query=session.createQuery("from Member where account=:account and password=:password",Member.class);
		query.setParameter("account", member.getAccount());
		query.setParameter("password", member.getPassword());
		System.out.println(member.getAccount());
		System.out.println(member.getPassword());
		Member resultBean =query.uniqueResult();
		if(resultBean!=null) {
			return true;
		}
		return false;
	}
	@Override
	public boolean checkLogin(Member member) {
		Session session = factory.getCurrentSession();
		
		String hql = "from Member where account=:account";
		Query<Member> query = session.createQuery(hql, Member.class);
		query.setParameter("account", member.getAccount());
		System.out.println(member.getAccount());
		Member resultBean = query.uniqueResult();
	
		
		if(resultBean!=null) {
			return true;
		}
		
		return false;		
	}
}
