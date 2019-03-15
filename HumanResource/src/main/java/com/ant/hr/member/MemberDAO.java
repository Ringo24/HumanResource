package com.ant.hr.member;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class MemberDAO implements MemberDaoI {

	@Autowired
	private SqlSession ss;

	@Override
	public void join(Member m, HttpServletRequest req, HttpServletResponse res) {
		String path = null;
		String m_photo = null;
		
		try {
			path = req.getSession().getServletContext().getRealPath("resources/file");
			
			MultipartRequest mr = new MultipartRequest(req, path, 12*1024*1024,"utf-8", new DefaultFileRenamePolicy());
			
			m_photo = mr.getFilesystemName("m_photo");
			if (m_photo != null) {
				m_photo = URLEncoder.encode(m_photo, "utf-8"); // 새.png => %3A.png
			}
			// " " => "+"로 바뀌는데, " "는 " "로 놔둬야함
			m_photo = m_photo.replace("+", " ");
			m.setM_photo(m_photo);
			
			m.setM_id(mr.getParameter("m_id"));
			m.setM_pw(mr.getParameter("m_pw"));
			m.setM_name(mr.getParameter("m_name"));
			m.setM_gender(new BigDecimal(mr.getParameter("m_gender")));
			m.setM_email(mr.getParameter("m_email"));
			m.setM_birth(mr.getParameter("m_birth"));
			m.setM_phone(mr.getParameter("m_phone"));
			m.setM_school(new BigDecimal(mr.getParameter("m_school")));
			m.setM_schoolname(mr.getParameter("m_schoolname"));
			m.setM_schoolmajor(mr.getParameter("m_schoolmajor"));
			m.setM_working(new BigDecimal(mr.getParameter("m_working")));
			m.setM_army(new BigDecimal(mr.getParameter("m_army")));
			m.setM_bank(mr.getParameter("m_bank"));
			m.setM_account(mr.getParameter("m_account"));
			m.setM_accname(mr.getParameter("m_accname"));
			m.setM_post(mr.getParameter("m_post"));
			m.setM_addr(mr.getParameter("m_addr"));
			m.setM_addrdetail(mr.getParameter("m_addrdetail"));
			m.setM_station(mr.getParameter("m_station"));
			m.setM_intro(mr.getParameter("m_intro"));
			
			if (ss.getMapper(MemberMapper.class).join(m) == 1) {
				if (ss.getMapper(MemberMapper.class).joinBankInfo(m) == 1) {
					req.setAttribute("r", "회원가입 성공");
				}
			}
		} catch (Exception e) {
			req.setAttribute("r", "회원가입 실패");
			// 실패시 사진 삭제
			try {
				if (m_photo != null) {
					String pre_m_photo = URLDecoder.decode(m_photo, "utf-8");
					File f = new File(path + "/" + pre_m_photo);
					f.delete();
					System.out.println("가입 실패 파일 삭제 완료");
				}
			} catch (UnsupportedEncodingException e1) {
			}
		}
	}

	@Override
	public void login(Member m, HttpServletRequest req, HttpServletResponse res) {
		try {
			Member dbm = ss.getMapper(MemberMapper.class).getMemberInfoByM_ID(m);

			if (dbm != null) {
				if (dbm.getM_pw().equals(m.getM_pw())) {
					// 다른 요청에서도 쓸 수 있고
					// 시간 제한
					// 브라우저 닫으면 세션 종료
					req.getSession().setAttribute("loginMember", dbm);
					req.getSession().setMaxInactiveInterval(1 * 60 * 60);
					req.setAttribute("r", "로그인 성공");
				} else {
					req.setAttribute("r", "비밀번호를 확인하세요");
				}
			} else {
				req.setAttribute("r", "아이디를 확인하세요");
			}
		} catch (Exception e) {
			req.setAttribute("r", "DB서버 이상");
		}
	}

	@Override
	public void logout(HttpServletRequest req, HttpServletResponse res) {
		req.getSession().setAttribute("loginMember", null);
		req.getSession().setAttribute("searchSnsAl", null);
	}

	@Override
	public boolean loginCheck(HttpServletRequest req, HttpServletResponse res) {
		autoLogin(req, res);
		Member m = (Member) req.getSession().getAttribute("loginMember");

		if (m != null) {
			// 로그인 됐을 때
			req.setAttribute("loginPage", "member/logon.jsp");
			return true;
		}
		// 로그인 안됐을 때
		req.setAttribute("loginPage", "member/login.jsp");
		return false;
	}

	@Override
	public void autoLogin(HttpServletRequest req, HttpServletResponse res) {
		// 보류
	}

	@Override
	public void update(Member m, HttpServletRequest req, HttpServletResponse res) {
		try {
			// 수정 전 사진 받아두기
			Member sm = (Member) req.getSession().getAttribute("loginMember");
			String pre_m_photo = sm.getM_photo();
			
			String path = req.getSession().getServletContext().getRealPath("resources/file");
			
			MultipartRequest mr = new MultipartRequest(req, path, 12*1024*1024,"utf-8", new DefaultFileRenamePolicy());
			
			String m_photo = mr.getFilesystemName("m_photo");
			if (m_photo != null) {
				m_photo = URLEncoder.encode(m_photo, "utf-8"); // 새.png => %3A.png
			}
			// " " => "+"로 바뀌는데, " "는 " "로 놔둬야함
			m_photo = m_photo.replace("+", " ");
			m.setM_photo(m_photo);
			
			m.setM_id(mr.getParameter("m_id"));
			m.setM_pw(mr.getParameter("m_pw"));
			m.setM_name(mr.getParameter("m_name"));
			m.setM_gender(new BigDecimal(mr.getParameter("m_gender")));
			m.setM_email(mr.getParameter("m_email"));
			m.setM_birth(mr.getParameter("m_birth"));
			m.setM_phone(mr.getParameter("m_phone"));
			m.setM_school(new BigDecimal(mr.getParameter("m_school")));
			m.setM_schoolname(mr.getParameter("m_schoolname"));
			m.setM_schoolmajor(mr.getParameter("m_schoolmajor"));
			m.setM_working(new BigDecimal(mr.getParameter("m_working")));
			m.setM_army(new BigDecimal(mr.getParameter("m_army")));
			m.setM_bank(mr.getParameter("m_bank"));
			m.setM_account(mr.getParameter("m_account"));
			m.setM_accname(mr.getParameter("m_accname"));
			m.setM_post(mr.getParameter("m_post"));
			m.setM_addr(mr.getParameter("m_addr"));
			m.setM_addrdetail(mr.getParameter("m_addrdetail"));
			m.setM_station(mr.getParameter("m_station"));
			m.setM_intro(mr.getParameter("m_intro"));
			
			int result = 0;
			if (m_photo != null) {
				if (ss.getMapper(MemberMapper.class).updateWithPhoto(m) == 1) {
					result = ss.getMapper(MemberMapper.class).updateBankInfo(m);
				}
			} else {
				if (ss.getMapper(MemberMapper.class).updateWithoutPhoto(m) == 1) {
					result = ss.getMapper(MemberMapper.class).updateBankInfo(m);
				}
			}
			if (result == 1) {
				req.setAttribute("r", "수정 성공");
				login(m, req, res);
				// 이전 사진 삭제
				pre_m_photo = URLDecoder.decode(pre_m_photo, "utf-8");
				File f = new File(path + "/" + pre_m_photo);
				f.delete();
			}
		} catch (Exception e) {
			req.setAttribute("r", "수정 실패");
			e.printStackTrace();
		} 
	}

	@Override
	public void delete(HttpServletRequest req, HttpServletResponse res) {
		try {
			Member m = (Member) req.getSession().getAttribute("loginMember");
			if (ss.getMapper(MemberMapper.class).delete(m) == 1) {
				req.setAttribute("r", "탈퇴 성공");
				// 사진 삭제
				String m_photo = URLDecoder.decode(m.getM_photo(), "utf-8");
				String path = req.getSession().getServletContext().getRealPath("resources/file");
				File f = new File(path + "/" + m_photo);
				f.delete();
				// 로그아웃
				logout(req, res);
			}
		} catch (Exception e) {
			req.setAttribute("r", "탈퇴 실패");
			e.printStackTrace();
		}
	}

	@Override
	public Members idCheck(Member m) {
		ArrayList<Member> al = new ArrayList<Member>();
		al.add(ss.getMapper(MemberMapper.class).getMemberInfoByM_ID(m));
		Members ms = new Members(al);
		return ms;
	}

}
