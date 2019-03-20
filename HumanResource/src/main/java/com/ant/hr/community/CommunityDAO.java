package com.ant.hr.community;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ant.hr.member.Member;

@Service
public class CommunityDAO {

	@Autowired
	private SqlSession ss;
	
	private int allBBSCount;
	
	public void getAllBBSCount() {
		allBBSCount = ss.getMapper(CommunityMapper.class).getAllBBSCount();
		System.out.println(allBBSCount);
	}
	
	public void paging(int pageNo, HttpServletRequest req, HttpServletResponse res) {
		@SuppressWarnings("unchecked")
		List<BBS> searchBBSAl = (List<BBS>) req.getSession().getAttribute("searchBBSAl");
		double count = 10.0;
		req.setAttribute("curPage", pageNo);
		
		try {
			if (searchBBSAl != null && searchBBSAl.size() > 0) {
				// 검색
				int pageCount = (int) Math.ceil(searchBBSAl.size() / count);
				req.setAttribute("pageCount", pageCount);
				
				// 해당 페이지 게시물 추출
				int start = (searchBBSAl.size() - ((pageNo - 1) * (int)count));
				int end = (pageNo == pageCount) ? 1 : (start - ((int)count - 1));
				
				ArrayList<BBS> BBSAl = new ArrayList<BBS>();
				BBS b = null;
				
				for (int i = start-1; i >= end-1; i--) {
					b = searchBBSAl.get(i);
					b.setB_replies(ss.getMapper(CommunityMapper.class).getReply(b));
					BBSAl.add(b);
				}
				req.setAttribute("BBSAl", BBSAl);
			} else if (allBBSCount > 0) {
				// 전체 페이지 수 계산
				int pageCount = (int) Math.ceil(allBBSCount / count);
				req.setAttribute("pageCount", pageCount);
				
				int start = (allBBSCount - ((pageNo - 1) * (int)count));
				int end = (pageNo == pageCount) ? 1 : (start - ((int)count - 1));
				
				BBSno bn = new BBSno(new BigDecimal(start), new BigDecimal(end));
				List<BBS> BBSAl = new ArrayList<BBS>();
				BBSAl = ss.getMapper(CommunityMapper.class).getBBS(bn);
				BBS b = null;
				
				for (int i = 0; i < BBSAl.size(); i++) {
					b = BBSAl.get(i);
					b.setB_replies(ss.getMapper(CommunityMapper.class).getReply(b));
					System.out.println(b.getB_no());
				}
				req.setAttribute("BBSAl", BBSAl);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void search(Query q, HttpServletRequest req, HttpServletResponse res) {
		req.getSession().setAttribute("searchBBSAl", ss.getMapper(CommunityMapper.class).search(q));
	}
	
	public void clearSearch(HttpServletRequest req, HttpServletResponse res) {
		req.getSession().setAttribute("searchBBSAl", null);
	}
	
	public void write(BBS b, HttpServletRequest req, HttpServletResponse res) {
		try {
			Member m = (Member) req.getSession().getAttribute("loginMember");
			b.setB_id(m.getM_id());
			b.setB_name(m.getM_name());
			b.setB_content(b.getB_content().replace("\r\n", "<br>"));
			
			if (ss.getMapper(CommunityMapper.class).write(b) == 1) {
				req.setAttribute("r", "글쓰기 성공");
				allBBSCount++;
			}
		} catch (Exception e) {
			req.setAttribute("r", "글쓰기 실패");
			e.printStackTrace();
		}
	}
	
	public void writeReply(Reply r, HttpServletRequest req, HttpServletResponse res) {
		try {
			Member m = (Member) req.getSession().getAttribute("loginMember");
			r.setRp_id(m.getM_id());
			r.setRp_name(m.getM_name());
			r.setRp_content(r.getRp_content().replace("\r\n", "<br>"));
			
			if (ss.getMapper(CommunityMapper.class).writeReply(r) == 1) {
				req.setAttribute("r", "댓글 등록 성공");
			}
		} catch (Exception e) {
			req.setAttribute("r", "댓글 등록 실패");
			e.printStackTrace();
		}
	}
	
	public void update(BBS b, HttpServletRequest req, HttpServletResponse res) {
		try {
			if (ss.getMapper(CommunityMapper.class).update(b) == 1) {
				req.setAttribute("r", "수정 성공");
			}
		} catch (Exception e) {
			req.setAttribute("r", "수정 실패");
			e.printStackTrace();
		}
	}
	
	public void updateReply(Reply r, HttpServletRequest req, HttpServletResponse res) {
		try {
			if (ss.getMapper(CommunityMapper.class).updateReply(r) == 1) {
				req.setAttribute("r", "수정 성공");
			}
		} catch (Exception e) {
			req.setAttribute("r", "수정 실패");
			e.printStackTrace();
		}
	}
	
	public void delete(BBS b, HttpServletRequest req, HttpServletResponse res) {
		try {
			if (ss.getMapper(CommunityMapper.class).delete(b) == 1) {
				req.setAttribute("r", "삭제 성공");
				allBBSCount--;
			}
		} catch (Exception e) {
			req.setAttribute("r", "삭제 실패");
			e.printStackTrace();
		}
	}
	
	public void deleteReplybyRpno(Reply r, HttpServletRequest req, HttpServletResponse res) {
		try {
			if (ss.getMapper(CommunityMapper.class).deleteReplybyRpno(r) == 1) {
				req.setAttribute("r", "삭제 성공");
			}
		} catch (Exception e) {
			req.setAttribute("r", "삭제 실패");
			e.printStackTrace();
		}
	}
	
}
