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
	
	@RequestMapping(value = "SignUp/", method = RequestMethod.GET)
	public String goJoin(HttpServletRequest req, HttpServletResponse res) {
		return "member/signup";
	}
	@RequestMapping(value = "Resister/", method = RequestMethod.POST)
	public String join(HttpServletRequest req, HttpServletResponse res) {
		return "index";
	}
	
	@RequestMapping(value = "member.id.check", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	public @ResponseBody Members idCheck(Member m, HttpServletRequest req, HttpServletResponse res) {
		return mDAO.idCheck(m);
	}
}
