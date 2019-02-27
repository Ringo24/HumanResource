package com.ant.hr.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberDAO implements MemberDaoI {

	@Autowired
	private SqlSession ss;
	
	@Override
	public void join(Member m, HttpServletRequest req, HttpServletResponse res) {
		
	}

	@Override
	public void login(Member m, HttpServletRequest req, HttpServletResponse res) {
		
	}

	@Override
	public void logout(HttpServletRequest req, HttpServletResponse res) {
		
	}

	@Override
	public boolean loginCheck(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void autoLogin(HttpServletRequest req, HttpServletResponse res) {
		
	}

	@Override
	public void update(Member m, HttpServletRequest req, HttpServletResponse res) {
		
	}

	@Override
	public void delete(HttpServletRequest req, HttpServletResponse res) {
		
	}

	@Override
	public Members idCheck(Member m) {
		ArrayList<Member> al = new ArrayList<Member>();
		al.add(ss.getMapper(MemberMapper.class).getMemberInfoByM_ID(m));
		Members ms = new Members(al);
		return ms;
	}

}
