package com.ant.hr.work;

import java.math.BigDecimal;

public class Application {
	private BigDecimal a_no;
	private BigDecimal r_no;
	private String m_id;
	private BigDecimal a_state;
	
	private Company company;
	private Recruit recruit;
	
	public Application() {super();}

	public Application(BigDecimal a_no, BigDecimal r_no, String m_id, BigDecimal a_state, Company company,
			Recruit recruit) {
		super();
		this.a_no = a_no;
		this.r_no = r_no;
		this.m_id = m_id;
		this.a_state = a_state;
		this.company = company;
		this.recruit = recruit;
	}

	public BigDecimal getA_no() {
		return a_no;
	}

	public void setA_no(BigDecimal a_no) {
		this.a_no = a_no;
	}

	public BigDecimal getR_no() {
		return r_no;
	}

	public void setR_no(BigDecimal r_no) {
		this.r_no = r_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public BigDecimal getA_state() {
		return a_state;
	}

	public void setA_state(BigDecimal a_state) {
		this.a_state = a_state;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public Recruit getRecruit() {
		return recruit;
	}

	public void setRecruit(Recruit recruit) {
		this.recruit = recruit;
	}
	
}
