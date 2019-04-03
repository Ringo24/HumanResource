package com.ant.hr.work;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ant.hr.community.CommunityDAO;
import com.ant.hr.member.MemberDAO;

@Controller
public class WorkController {

	@Autowired
	private MemberDAO mDAO;
	@Autowired
	private CommunityDAO cDAO;
	@Autowired
	private WorkDAO wDAO;
	
	@RequestMapping(value = "CompanyDetail", method = RequestMethod.GET)
	public String goDetail(Company c, HttpServletRequest req, HttpServletResponse res) {
		wDAO.getOneCompany(c, req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "work/companyDetail.jsp");
		return "index";
	}
	@RequestMapping(value = "Pay", method = RequestMethod.GET)
	public String goPay(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "work/payrequest.jsp");
		return "index";
	}
	@RequestMapping(value = "MyRecruit", method = RequestMethod.GET)
	public String goMyRecruit(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "work/myrecruitlist.jsp");
		return "index";
	}
}
