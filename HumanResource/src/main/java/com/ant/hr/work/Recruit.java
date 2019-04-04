package com.ant.hr.work;

import java.math.BigDecimal;
import java.util.Date;

public class Recruit {
	private BigDecimal r_no;
	private Date r_date;
	private BigDecimal r_total;
	private BigDecimal g_no;
	private BigDecimal r_state;
	
	private Company company;

	public Recruit() {super();}

	public Recruit(BigDecimal r_no, Date r_date, BigDecimal r_total, BigDecimal g_no, BigDecimal r_state,
			Company company) {
		super();
		this.r_no = r_no;
		this.r_date = r_date;
		this.r_total = r_total;
		this.g_no = g_no;
		this.r_state = r_state;
		this.company = company;
	}

	public BigDecimal getR_no() {
		return r_no;
	}

	public void setR_no(BigDecimal r_no) {
		this.r_no = r_no;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	public BigDecimal getR_total() {
		return r_total;
	}

	public void setR_total(BigDecimal r_total) {
		this.r_total = r_total;
	}

	public BigDecimal getG_no() {
		return g_no;
	}

	public void setG_no(BigDecimal g_no) {
		this.g_no = g_no;
	}

	public BigDecimal getR_state() {
		return r_state;
	}

	public void setR_state(BigDecimal r_state) {
		this.r_state = r_state;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}
	
}
