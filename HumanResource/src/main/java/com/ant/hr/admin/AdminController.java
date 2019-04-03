package com.ant.hr.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ant.hr.member.MemberDAO;
import com.ant.hr.work.Company;
import com.ant.hr.work.WorkDAO;

@Controller
public class AdminController {

	@Autowired
	private MemberDAO mDAO;
	@Autowired
	private WorkDAO wDAO;
	
	private boolean firstReq; // 첫 요청인지 따질 변수
	
	public AdminController() {
		firstReq = true;
	}
	
	@RequestMapping(value = "Admin", method = RequestMethod.GET)
	public String goAdmin(HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			req.setAttribute("contentPage", "admin/main.jsp");
			return "adindex";
		} else {
			req.setAttribute("contentPage", "main.jsp");
			return "index";
		}
	}
	@RequestMapping(value = "Admin.Company", method = RequestMethod.GET)
	public String goCompany(HttpServletRequest req, HttpServletResponse res) {
		if (firstReq) {
			wDAO.getAllCompanyCount();
			firstReq = false;
		}
		if (mDAO.loginCheck(req, res)) {
			wDAO.pagingCompany(1, req, res);
			req.setAttribute("contentPage", "admin/company.jsp");
			return "adindex";
		} else {
			req.setAttribute("contentPage", "main.jsp");
			return "index";
		}
	}
	@RequestMapping(value = "Admin.RegCompany", method = RequestMethod.GET)
	public String goRegCompany(HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			req.setAttribute("contentPage", "admin/regCompany.jsp");
			return "adindex";
		} else {
			req.setAttribute("contentPage", "main.jsp");
			return "index";
		}
	}
	@RequestMapping(value = "Admin.RegCom", method = RequestMethod.POST)
	public String regCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			wDAO.regCompany(c, req, res);
			wDAO.pagingCompany(1, req, res);
			req.setAttribute("contentPage", "admin/company.jsp");
			return "adindex";
		} else {
			req.setAttribute("contentPage", "main.jsp");
			return "index";
		}
	}
	@RequestMapping(value = "Admin.ModCompany", method = RequestMethod.GET)
	public String goModCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			wDAO.getOneCompany(c, req, res);
			req.setAttribute("contentPage", "admin/modCompany.jsp");
			return "adindex";
		} else {
			req.setAttribute("contentPage", "main.jsp");
			return "index";
		}
	}
	@RequestMapping(value = "Admin.ModCom", method = RequestMethod.POST)
	public String modCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			wDAO.updateCompany(c, req, res);
			wDAO.pagingCompany(1, req, res);
			req.setAttribute("contentPage", "admin/company.jsp");
			return "adindex";
		} else {
			req.setAttribute("contentPage", "main.jsp");
			return "index";
		}
	}
	@RequestMapping(value = "Admin.DelCom", method = RequestMethod.GET)
	public String delCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			wDAO.deleteCompany(c, req, res);
			wDAO.pagingCompany(1, req, res);
			req.setAttribute("contentPage", "admin/company.jsp");
			return "adindex";
		} else {
			req.setAttribute("contentPage", "main.jsp");
			return "index";
		}
	}
}
