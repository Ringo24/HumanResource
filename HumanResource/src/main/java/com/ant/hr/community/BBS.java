package com.ant.hr.community;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class BBS {
	private BigDecimal b_no;
	private String b_category;
	private String b_title;
	private String b_content;
	private String b_id;
	private String b_name;
	private Date b_date;
	private String b_photo;
	private BigDecimal b_hit;
	private String b_notice;
	private String m_photo;
	
	private List<Reply> b_replies;
	
	public BBS() {super();}

	public BBS(BigDecimal b_no, String b_category, String b_title, String b_content, String b_id, String b_name,
			Date b_date, String b_photo, BigDecimal b_hit, String b_notice, String m_photo, List<Reply> b_replies) {
		super();
		this.b_no = b_no;
		this.b_category = b_category;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_id = b_id;
		this.b_name = b_name;
		this.b_date = b_date;
		this.b_photo = b_photo;
		this.b_hit = b_hit;
		this.b_notice = b_notice;
		this.m_photo = m_photo;
		this.b_replies = b_replies;
	}

	public BigDecimal getB_no() {
		return b_no;
	}

	public void setB_no(BigDecimal b_no) {
		this.b_no = b_no;
	}

	public String getB_category() {
		return b_category;
	}

	public void setB_category(String b_category) {
		this.b_category = b_category;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public String getB_id() {
		return b_id;
	}

	public void setB_id(String b_id) {
		this.b_id = b_id;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}

	public String getB_photo() {
		return b_photo;
	}

	public void setB_photo(String b_photo) {
		this.b_photo = b_photo;
	}

	public BigDecimal getB_hit() {
		return b_hit;
	}

	public void setB_hit(BigDecimal b_hit) {
		this.b_hit = b_hit;
	}

	public String getB_notice() {
		return b_notice;
	}

	public void setB_notice(String b_notice) {
		this.b_notice = b_notice;
	}

	public List<Reply> getB_replies() {
		return b_replies;
	}

	public void setB_replies(List<Reply> b_replies) {
		this.b_replies = b_replies;
	}

	public String getM_photo() {
		return m_photo;
	}

	public void setM_photo(String m_photo) {
		this.m_photo = m_photo;
	}
	
}
