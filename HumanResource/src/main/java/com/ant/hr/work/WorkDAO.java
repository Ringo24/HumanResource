package com.ant.hr.work;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ant.hr.community.BBSno;

@Service
public class WorkDAO {

	@Autowired
	private SqlSession ss;
	
	private int allCompanyCount;
	private int allRecruitCount;
	
	public void getAllCompanyCount() {
		allCompanyCount = ss.getMapper(WorkMapper.class).getAllCompanyCount();
	}
	
	public void getAllRecruitCount() {
		allRecruitCount = ss.getMapper(WorkMapper.class).getAllRecruitCount();
	}
	
	public void pagingCompany(int pageNo, HttpServletRequest req, HttpServletResponse res) {
		@SuppressWarnings("unchecked")
		List<Company> searchCompanyAl = (List<Company>) req.getSession().getAttribute("searchCompanyAl");
		double count = 6.0;
		req.setAttribute("curPage", pageNo);
		
		try {
			if (searchCompanyAl != null && searchCompanyAl.size() > 0) {
				// 검색
				int pageCount = (int) Math.ceil(searchCompanyAl.size() / count);
				req.setAttribute("pageCount", pageCount);
				
				// 해당 페이지 게시물 추출
				int start = (searchCompanyAl.size() - ((pageNo - 1) * (int)count));
				int end = (pageNo == pageCount) ? 1 : (start - ((int)count - 1));
				
				ArrayList<Company> CompanyAl = new ArrayList<Company>();
				Company c = null;
				
				for (int i = start-1; i >= end-1; i--) {
					c = searchCompanyAl.get(i);
					CompanyAl.add(c);
				}
				req.setAttribute("CompanyAl", CompanyAl);
			} else if (allCompanyCount > 0) {
				// 전체 페이지 수 계산
				int pageCount = (int) Math.ceil(allCompanyCount / count);
				req.setAttribute("pageCount", pageCount);
				
				int start = (allCompanyCount - ((pageNo - 1) * (int)count));
				int end = (pageNo == pageCount) ? 1 : (start - ((int)count - 1));
				
				BBSno bn = new BBSno(new BigDecimal(start), new BigDecimal(end));
				List<Company> CompanyAl = new ArrayList<Company>();
				CompanyAl = ss.getMapper(WorkMapper.class).getCompany(bn);
				req.setAttribute("CompanyAl", CompanyAl);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void pagingRecruit(int pageNo, HttpServletRequest req, HttpServletResponse res) {
		@SuppressWarnings("unchecked")
		List<Recruit> searchRecruitAl = (List<Recruit>) req.getSession().getAttribute("searchRecruitAl");
		double count = 15.0;
		req.setAttribute("curPage", pageNo);
		
		try {
			if (searchRecruitAl != null && searchRecruitAl.size() > 0) {
				// 검색
				int pageCount = (int) Math.ceil(searchRecruitAl.size() / count);
				req.setAttribute("pageCount", pageCount);
				
				// 해당 페이지 게시물 추출
				int start = (searchRecruitAl.size() - ((pageNo - 1) * (int)count));
				int end = (pageNo == pageCount) ? 1 : (start - ((int)count - 1));
				
				ArrayList<Recruit> RecruitAl = new ArrayList<Recruit>();
				Recruit r = null;
				
				for (int i = start-1; i >= end-1; i--) {
					r = searchRecruitAl.get(i);
					r.setCompany(ss.getMapper(WorkMapper.class).getOneCompanybyR_no(r));
					RecruitAl.add(r);
				}
				req.setAttribute("RecruitAl", RecruitAl);
			} else if (allRecruitCount > 0) {
				// 전체 페이지 수 계산
				int pageCount = (int) Math.ceil(allRecruitCount / count);
				req.setAttribute("pageCount", pageCount);
				
				int start = (allRecruitCount - ((pageNo - 1) * (int)count));
				int end = (pageNo == pageCount) ? 1 : (start - ((int)count - 1));
				
				BBSno bn = new BBSno(new BigDecimal(start), new BigDecimal(end));
				List<Recruit> RecruitAl = new ArrayList<Recruit>();
				RecruitAl = ss.getMapper(WorkMapper.class).getRecruit(bn);
				Recruit rr = null;
				for (int i = 0; i < RecruitAl.size(); i++) {
					rr = RecruitAl.get(i);
					rr.setCompany(ss.getMapper(WorkMapper.class).getOneCompanybyR_no(rr));
				}
				req.setAttribute("RecruitAl", RecruitAl);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void regCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		try {
			c.setG_recruit(c.getG_recruit().replace("\r\n", "<br>"));
			c.setG_employment(c.getG_employment().replace("\r\n", "<br>"));
			c.setG_required(c.getG_required().replace("\r\n", "<br>"));
			c.setG_condition(c.getG_condition().replace("\r\n", "<br>"));
			
			if (ss.getMapper(WorkMapper.class).regCompany(c) == 1) {
				req.setAttribute("r", "Register Success.");
				allCompanyCount++;
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Register.");
			e.printStackTrace();
		}
	}
	
	public void updateCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		try {
			c.setG_recruit(c.getG_recruit().replace("\r\n", "<br>"));
			c.setG_employment(c.getG_employment().replace("\r\n", "<br>"));
			c.setG_required(c.getG_required().replace("\r\n", "<br>"));
			c.setG_condition(c.getG_condition().replace("\r\n", "<br>"));
			
			if (ss.getMapper(WorkMapper.class).updateCompany(c) == 1) {
				req.setAttribute("r", "Update Success.");
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Update.");
			e.printStackTrace();
		}
	}
	
	public void deleteCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		try {
			if (ss.getMapper(WorkMapper.class).deleteCompany(c) == 1) {
				req.setAttribute("r", "Delete Success.");
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Delete.");
			e.printStackTrace();
		}
	}
	
	public void getOneCompany(Company c, HttpServletRequest req, HttpServletResponse res) {
		Company dbc = ss.getMapper(WorkMapper.class).getOneCompany(c);
		dbc.setG_recruit(dbc.getG_recruit().replace("<br>", "\r\n"));
		dbc.setG_employment(dbc.getG_employment().replace("<br>", "\r\n"));
		dbc.setG_required(dbc.getG_required().replace("<br>", "\r\n"));
		dbc.setG_condition(dbc.getG_condition().replace("<br>", "\r\n"));
		req.setAttribute("g", dbc);
	}
	public void getOneRecruit(Recruit r, HttpServletRequest req, HttpServletResponse res) {
		Recruit dbr = ss.getMapper(WorkMapper.class).getOneRecruit(r);
		dbr.setCompany(ss.getMapper(WorkMapper.class).getOneCompanybyR_no(dbr));
		req.setAttribute("oneRecruit", dbr);
	}
}
