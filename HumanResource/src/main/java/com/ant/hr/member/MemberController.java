package com.ant.hr.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO mDAO;
	
	@RequestMapping(value = "SignUp", method = RequestMethod.GET)
	public String goJoin(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "member/signup.jsp");
		return "index";
	}
	@RequestMapping(value = "Resister", method = RequestMethod.POST)
	public String join(Member m, HttpServletRequest req, HttpServletResponse res) {
		mDAO.join(m, req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "main.jsp");
		return "index";
	}
	@RequestMapping(value = "Login", method = RequestMethod.POST)
	public String login(Member m, HttpServletRequest req, HttpServletResponse res) {
		mDAO.login(m, req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "main.jsp");
		return "index";
	}
	@RequestMapping(value = "Logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req, HttpServletResponse res) {
		mDAO.logout(req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "main.jsp");
		return "index";
	}
	@RequestMapping(value = "GoodBye", method = RequestMethod.GET)
	public String delete(Member m, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			mDAO.delete(req, res);
		}
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "main.jsp");
		return "index";
	}
	@RequestMapping(value = "Modify", method = RequestMethod.GET)
	public String goUpdate(HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			req.setAttribute("contentPage", "member/update.jsp");
		} else {
			req.setAttribute("contentPage", "main.jsp");
		}
		return "index";
	}
	@RequestMapping(value = "Crystal", method = RequestMethod.POST)
	public String update(Member m, HttpServletRequest req, HttpServletResponse res) {
		mDAO.update(m, req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "main.jsp");
		return "index";
	}
	
	@RequestMapping(value = "member.id.check", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public @ResponseBody Members idCheck(Member m, HttpServletRequest req, HttpServletResponse res) {
		return mDAO.idCheck(m);
	}
}
