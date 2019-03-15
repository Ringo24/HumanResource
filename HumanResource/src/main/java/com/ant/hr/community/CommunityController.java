package com.ant.hr.community;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ant.hr.member.MemberDAO;

@Controller
public class CommunityController {

	@Autowired
	private MemberDAO mDAO;
	
	@RequestMapping(value = "Notice", method = RequestMethod.GET)
	public String goNotice(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
}
