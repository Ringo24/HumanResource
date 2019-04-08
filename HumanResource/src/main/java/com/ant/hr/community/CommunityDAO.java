package com.ant.hr.community;

import java.io.File;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ant.hr.member.Member;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Service
public class CommunityDAO {

	@Autowired
	private SqlSession ss;
	
	private int allBBSCount;
	
	public void getAllBBSCount() {
		allBBSCount = ss.getMapper(CommunityMapper.class).getAllBBSCount();
		System.out.println(allBBSCount);
	}
	
	public void paging(int pageNo, String bbs, HttpServletRequest req, HttpServletResponse res) {
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
				
				BBSno bn = new BBSno(new BigDecimal(start), new BigDecimal(end), bbs);
				List<BBS> BBSAl = new ArrayList<BBS>();
				BBSAl = ss.getMapper(CommunityMapper.class).getBBS(bn);
				BBS b = null;
				
				for (int i = 0; i < BBSAl.size(); i++) {
					b = BBSAl.get(i);
					b.setB_replies(ss.getMapper(CommunityMapper.class).getReply(b));
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
		String path = null;
		String b_photo = null;
		
		try {
			path = req.getSession().getServletContext().getRealPath("resources/file");
			
			MultipartRequest mr = new MultipartRequest(req, path, 12*1024*1024,"utf-8", new DefaultFileRenamePolicy());
			
			b_photo = mr.getFilesystemName("b_photo");
			if (b_photo != null) {
				b_photo = URLEncoder.encode(b_photo, "utf-8"); // 새.png => %3A.png
			}
			// " " => "+"로 바뀌는데, " "는 " "로 놔둬야함
			b_photo = b_photo.replace("+", " ");
			b.setB_photo(b_photo);
			
			Member m = (Member) req.getSession().getAttribute("loginMember");
			b.setB_id(m.getM_id());
			b.setB_name(m.getM_name());
			b.setB_category(mr.getParameter("b_category"));
			b.setB_title(mr.getParameter("b_title"));
			b.setB_content(mr.getParameter("b_content").replace("\r\n", "<br>"));
			b.setB_notice(mr.getParameter("b_notice"));
			
			if (b_photo != null) {
				if (ss.getMapper(CommunityMapper.class).writeWithPhoto(b) == 1) {
					req.setAttribute("r", "Writing Success.");
					allBBSCount++;
				}
			} else {
				if (ss.getMapper(CommunityMapper.class).write(b) == 1) {
					req.setAttribute("r", "Writing Success.");
					allBBSCount++;
				}
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to write.");
			e.printStackTrace();
			try {
				b_photo = URLDecoder.decode(b_photo, "utf-8");
				File f = new File(path + "/" + b_photo);
				f.delete();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public void writeReply(Reply r, HttpServletRequest req, HttpServletResponse res) {
		try {
			Member m = (Member) req.getSession().getAttribute("loginMember");
			r.setRp_id(m.getM_id());
			r.setRp_name(m.getM_name());
			r.setB_no(r.getB_no());
			r.setRp_content(r.getRp_content());
			
			if (ss.getMapper(CommunityMapper.class).writeReply(r) == 1) {
				req.setAttribute("r", "Writing Reply Success.");
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Write Reply.");
			e.printStackTrace();
		}
	}
	
	public void update(BBS b, HttpServletRequest req, HttpServletResponse res) {
		String path = null;
		String pre_b_photo = null;
		try {
			path = req.getSession().getServletContext().getRealPath("resources/file");
			MultipartRequest mr = new MultipartRequest(req, path, 12*1024*1024,"utf-8", new DefaultFileRenamePolicy());
			
			b.setB_no(new BigDecimal(mr.getParameter("b_no")));
			// 수정 전 사진 받아두기
			BBS pre_b = ss.getMapper(CommunityMapper.class).getOneBBS(b);
			pre_b_photo = pre_b.getB_photo();
						
			String b_photo = mr.getFilesystemName("b_photo");
			if (b_photo != null) {
				b_photo = URLEncoder.encode(b_photo, "utf-8"); // 새.png => %3A.png
				// " " => "+"로 바뀌는데, " "는 " "로 놔둬야함
				b_photo = b_photo.replace("+", " ");
				b.setB_photo(b_photo);
			}
			b.setB_notice(mr.getParameter("b_notice"));
			b.setB_title(mr.getParameter("b_title"));
			b.setB_content(mr.getParameter("b_content").replace("\r\n", "<br>"));
			
			if (b_photo != null) {
				if (ss.getMapper(CommunityMapper.class).updateWithPhoto(b) == 1) {
					req.setAttribute("r", "Modify Success.");
					// 이전 사진 삭제
					pre_b_photo = URLDecoder.decode(pre_b_photo, "utf-8");
					File f = new File(path + "/" + pre_b_photo);
					f.delete();
				}
			} else {
				if (ss.getMapper(CommunityMapper.class).update(b) == 1) {
					req.setAttribute("r", "Modify Success.");
				}
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Modify.");
			e.printStackTrace();
			try {
				pre_b_photo = URLDecoder.decode(pre_b_photo, "utf-8");
				File f = new File(path + "/" + pre_b_photo);
				f.delete();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public void updateReply(Reply r, HttpServletRequest req, HttpServletResponse res) {
		try {
			if (ss.getMapper(CommunityMapper.class).updateReply(r) == 1) {
				req.setAttribute("r", "Modify Success.");
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Modify.");
			e.printStackTrace();
		}
	}
	
	public void delete(BBS b, HttpServletRequest req, HttpServletResponse res) {
		try {
			String path = req.getSession().getServletContext().getRealPath("resources/file");
			String b_photo = ss.getMapper(CommunityMapper.class).getOneBBS(b).getB_photo();
			
			if (ss.getMapper(CommunityMapper.class).delete(b) == 1) {
				req.setAttribute("r", "Delete Success.");
				allBBSCount--;
				b_photo = URLDecoder.decode(b_photo, "utf-8");
				File f = new File(path + "/" + b_photo);
				f.delete();
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Delete.");
			e.printStackTrace();
		}
	}
	
	public void deleteReplybyRpno(Reply r, HttpServletRequest req, HttpServletResponse res) {
		try {
			if (ss.getMapper(CommunityMapper.class).deleteReplybyRpno(r) == 1) {
				req.setAttribute("r", "Delete Success.");
			}
		} catch (Exception e) {
			req.setAttribute("r", "Failed to Delete.");
			e.printStackTrace();
		}
	}
	
	public void getOneBBS(BBS b, HttpServletRequest req, HttpServletResponse res) {
		BBS dbB = ss.getMapper(CommunityMapper.class).getOneBBS(b);
		dbB.setB_replies(ss.getMapper(CommunityMapper.class).getReply(dbB));
		req.setAttribute("b", dbB);
	}
	
	public void getOneUpdate(BBS b, HttpServletRequest req, HttpServletResponse res) {
		BBS dbB = ss.getMapper(CommunityMapper.class).getOneBBS(b);
		dbB.setB_content(dbB.getB_content().replace("<br>", "\r\n"));
		req.setAttribute("b", dbB);
	}
	
	public void plusOneHit(BBS b) {
		ss.getMapper(CommunityMapper.class).plusOneHit(b);
	}
}
