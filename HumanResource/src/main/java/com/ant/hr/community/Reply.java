package com.ant.hr.community;

import java.math.BigDecimal;
import java.util.Date;

public class Reply {
	private BigDecimal rp_no;
	private BigDecimal b_no;
	private String rp_content;
	private String rp_id;
	private String rp_name;
	private Date rp_date;
	
	public Reply() {super();}

	public Reply(BigDecimal rp_no, BigDecimal b_no, String rp_content, String rp_id, String rp_name, Date rp_date) {
		super();
		this.rp_no = rp_no;
		this.b_no = b_no;
		this.rp_content = rp_content;
		this.rp_id = rp_id;
		this.rp_name = rp_name;
		this.rp_date = rp_date;
	}

	public BigDecimal getRp_no() {
		return rp_no;
	}

	public void setRp_no(BigDecimal rp_no) {
		this.rp_no = rp_no;
	}

	public BigDecimal getB_no() {
		return b_no;
	}

	public void setB_no(BigDecimal b_no) {
		this.b_no = b_no;
	}

	public String getRp_content() {
		return rp_content;
	}

	public void setRp_content(String rp_content) {
		this.rp_content = rp_content;
	}

	public String getRp_id() {
		return rp_id;
	}

	public void setRp_id(String rp_id) {
		this.rp_id = rp_id;
	}

	public String getRp_name() {
		return rp_name;
	}

	public void setRp_name(String rp_name) {
		this.rp_name = rp_name;
	}

	public Date getRp_date() {
		return rp_date;
	}

	public void setRp_date(Date rp_date) {
		this.rp_date = rp_date;
	}
	
}
