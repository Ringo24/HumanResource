package com.ant.hr.work;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ant.hr.community.CommunityDAO;
import com.ant.hr.community.Query;
import com.ant.hr.member.MemberDAO;

@Controller
public class WorkController {

	@Autowired
	private MemberDAO mDAO;
	@Autowired
	private CommunityDAO cDAO;
	@Autowired
	private WorkDAO wDAO;
	
	private boolean firstCom; // 첫 요청인지 따질 변수
	private boolean firstRec; // 첫 요청인지 따질 변수
	
	public WorkController() {
		firstCom = true;
		firstRec = true;
	}
	
	@RequestMapping(value = "Company", method = RequestMethod.GET)
	public String goCompany(HttpServletRequest req, HttpServletResponse res) {
		if (firstCom) {
			wDAO.getAllCompanyCount();
			firstCom = false;
		}
		wDAO.pagingCompany(1, req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "work/company.jsp");
		return "index";
	}
	@RequestMapping(value = "Recruit", method = RequestMethod.GET)
	public String goRecruit(HttpServletRequest req, HttpServletResponse res) {
		if (firstRec) {
			wDAO.getAllRecruitCount();
			firstRec = false;
		}
		wDAO.pagingRecruit(1, req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "work/workList.jsp");
		return "index";
	}
	@RequestMapping(value = "CompanyDetail", method = RequestMethod.GET)
	public String goDetail(Company c, HttpServletRequest req, HttpServletResponse res) {
		wDAO.getOneCompany(c, req, res);
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "work/companyDetail.jsp");
		return "index";
	}
	@RequestMapping(value = "RecruitDetail", method = RequestMethod.GET)
	public String goRecruitDetail(Recruit r, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			wDAO.getOneRecruit(r, req, res);
			req.setAttribute("contentPage", "work/recruitDetail.jsp");
		} else {
			req.setAttribute("r", "Require Sign In.");
			req.setAttribute("contentPage", "main.jsp");
		}
		return "index";
	}
	@RequestMapping(value = "Application", method = RequestMethod.GET)
	public String application(Application a, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			wDAO.applicate(a, req, res);
			req.setAttribute("contentPage", "work/myrecruitlist.jsp");
		} else {
			req.setAttribute("r", "Require Sign In.");
			req.setAttribute("contentPage", "work/workList.jsp");
		}
		return "index";
	}
	@RequestMapping(value = "Pay", method = RequestMethod.GET)
	public String goPay(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		req.setAttribute("contentPage", "work/payrequest.jsp");
		return "index";
	}
	@RequestMapping(value = "MyRecruit", method = RequestMethod.GET)
	public String goMyRecruit(Query q, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			wDAO.getMyApplicationList(q, req, res);
			req.setAttribute("contentPage", "work/myrecruitlist.jsp");
		} else {
			req.setAttribute("r", "Require Sign In.");
			req.setAttribute("contentPage", "main.jsp");
		}
		return "index";
	}
}
