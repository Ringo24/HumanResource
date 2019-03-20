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
	@Autowired
	private CommunityDAO cDAO;
	
	private boolean firstReq; // 첫 요청인지 따질 변수
	
	public CommunityController() {
		firstReq = true;
	}
	
	@RequestMapping(value = "Notice", method = RequestMethod.GET)
	public String goNotice(HttpServletRequest req, HttpServletResponse res) {
		if (firstReq) {
			cDAO.getAllBBSCount();
			firstReq = false;
		}
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "Page", method = RequestMethod.GET)
	public String page(HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		cDAO.paging(Integer.parseInt(req.getParameter("p")), req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "Write", method = RequestMethod.POST)
	public String write(BBS b, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			cDAO.write(b, req, res);
		}
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "WriteReply", method = RequestMethod.GET)
	public String writeReply(Reply r, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			cDAO.writeReply(r, req, res);
		}
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "Update", method = RequestMethod.POST)
	public String update(BBS b, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			cDAO.update(b, req, res);
		}
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "UpdateReply", method = RequestMethod.GET)
	public String updateReply(Reply r, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			cDAO.updateReply(r, req, res);
		}
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "Delete", method = RequestMethod.GET)
	public String delete(BBS b, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			cDAO.delete(b, req, res);
		}
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "DeleteReply", method = RequestMethod.GET)
	public String deleteReply(Reply r, HttpServletRequest req, HttpServletResponse res) {
		if (mDAO.loginCheck(req, res)) {
			cDAO.deleteReplybyRpno(r, req, res);
		}
		mDAO.loginCheck(req, res);
		cDAO.clearSearch(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "Search", method = RequestMethod.POST)
	public String search(Query q, HttpServletRequest req, HttpServletResponse res) {
		cDAO.search(q, req, res);
		mDAO.loginCheck(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/bbs.jsp");
		return "index";
	}
	@RequestMapping(value = "Article", method = RequestMethod.GET)
	public String goArticle(BBS b, HttpServletRequest req, HttpServletResponse res) {
		mDAO.loginCheck(req, res);
		cDAO.paging(1, req, res);
		req.setAttribute("contentPage", "community/article.jsp");
		return "index";
	}
}
