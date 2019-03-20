package com.ant.hr;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ant.hr.community.CommunityDAO;
import com.ant.hr.member.MemberDAO;

@Controller
public class HomeController {
	
	@Autowired
	private MemberDAO mDAO;
	@Autowired
	private CommunityDAO cDAO;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		req.setAttribute("contentPage", "main.jsp");
		return "index";
	}
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		req.setAttribute("contentPage", "main.jsp");
		return "index";
	}
	
}
