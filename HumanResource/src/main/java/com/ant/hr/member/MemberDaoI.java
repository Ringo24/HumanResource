package com.ant.hr.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberDaoI {
	public abstract void join(Member m, HttpServletRequest req, HttpServletResponse res);
	public abstract void login(Member m, HttpServletRequest req, HttpServletResponse res);
	public abstract void logout(HttpServletRequest req, HttpServletResponse res);
	public abstract boolean loginCheck(HttpServletRequest req, HttpServletResponse res);
	public abstract void autoLogin(HttpServletRequest req, HttpServletResponse res);
	public abstract void update(Member m, HttpServletRequest req, HttpServletResponse res);
	public abstract void delete(HttpServletRequest req, HttpServletResponse res);
	public abstract Members idCheck(Member m);
}
