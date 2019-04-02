package com.ant.hr.work;

import java.math.BigDecimal;

public class Company {
	private BigDecimal g_no;
	private String g_name;
	private String g_inst;
	private String g_logo;
	private String g_hp;
	private String g_recruit;
	private String g_employment;
	private String g_required;
	private String g_infoPage;
	private String g_condition;
	private String g_post;
	private String g_addr;
	private String g_addrdetail;
	private String g_tel;
	private String g_email;
	private String g_station;
	
	public Company() {super();}

	public Company(BigDecimal g_no, String g_name, String g_inst, String g_logo, String g_hp, String g_recruit,
			String g_employment, String g_required, String g_infoPage, String g_condition, String g_post, String g_addr,
			String g_addrdetail, String g_tel, String g_email, String g_station) {
		super();
		this.g_no = g_no;
		this.g_name = g_name;
		this.g_inst = g_inst;
		this.g_logo = g_logo;
		this.g_hp = g_hp;
		this.g_recruit = g_recruit;
		this.g_employment = g_employment;
		this.g_required = g_required;
		this.g_infoPage = g_infoPage;
		this.g_condition = g_condition;
		this.g_post = g_post;
		this.g_addr = g_addr;
		this.g_addrdetail = g_addrdetail;
		this.g_tel = g_tel;
		this.g_email = g_email;
		this.g_station = g_station;
	}

	public BigDecimal getG_no() {
		return g_no;
	}

	public void setG_no(BigDecimal g_no) {
		this.g_no = g_no;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public String getG_inst() {
		return g_inst;
	}

	public void setG_inst(String g_inst) {
		this.g_inst = g_inst;
	}

	public String getG_logo() {
		return g_logo;
	}

	public void setG_logo(String g_logo) {
		this.g_logo = g_logo;
	}

	public String getG_hp() {
		return g_hp;
	}

	public void setG_hp(String g_hp) {
		this.g_hp = g_hp;
	}

	public String getG_recruit() {
		return g_recruit;
	}

	public void setG_recruit(String g_recruit) {
		this.g_recruit = g_recruit;
	}

	public String getG_employment() {
		return g_employment;
	}

	public void setG_employment(String g_employment) {
		this.g_employment = g_employment;
	}

	public String getG_required() {
		return g_required;
	}

	public void setG_required(String g_required) {
		this.g_required = g_required;
	}

	public String getG_infoPage() {
		return g_infoPage;
	}

	public void setG_infoPage(String g_infoPage) {
		this.g_infoPage = g_infoPage;
	}

	public String getG_condition() {
		return g_condition;
	}

	public void setG_condition(String g_condition) {
		this.g_condition = g_condition;
	}

	public String getG_post() {
		return g_post;
	}

	public void setG_post(String g_post) {
		this.g_post = g_post;
	}

	public String getG_addr() {
		return g_addr;
	}

	public void setG_addr(String g_addr) {
		this.g_addr = g_addr;
	}

	public String getG_addrdetail() {
		return g_addrdetail;
	}

	public void setG_addrdetail(String g_addrdetail) {
		this.g_addrdetail = g_addrdetail;
	}

	public String getG_tel() {
		return g_tel;
	}

	public void setG_tel(String g_tel) {
		this.g_tel = g_tel;
	}

	public String getG_email() {
		return g_email;
	}

	public void setG_email(String g_email) {
		this.g_email = g_email;
	}

	public String getG_station() {
		return g_station;
	}

	public void setG_station(String g_station) {
		this.g_station = g_station;
	}
	
}
