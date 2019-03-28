package com.ant.hr.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ant.hr.member.MemberDAO;

@Controller
public class AdminController {

	@Autowired
	private MemberDAO mDAO;
	
	@RequestMapping(value = "Admin", method = RequestMethod.GET)
	public String goAdmin(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "admin/main.jsp");
		return "adindex";
	}
}
