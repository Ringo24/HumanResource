package com.ant.hr.member;

import java.math.BigDecimal;

public class Member {
	private String m_id;
	private String m_pw;
	private String m_name;
	private BigDecimal m_gender;
	private String m_email;
	private String m_birth;
	private String m_phone;
	private BigDecimal m_school;
	private String m_schoolname;
	private String m_schoolmajor;
	private BigDecimal m_working;
	private BigDecimal m_army;
	private String m_bank;
	private String m_account;
	private String m_accname;
	private String m_post;
	private String m_addr;
	private String m_addrdetail;
	private String m_station;
	private String m_intro;
	private String m_photo;
	private BigDecimal m_point;
	
	public Member() {
		super();
	}

	public Member(String m_id, String m_pw, String m_name, BigDecimal m_gender, String m_email, String m_birth,
			String m_phone, BigDecimal m_school, String m_schoolname, String m_schoolmajor, BigDecimal m_working,
			BigDecimal m_army, String m_bank, String m_account, String m_accname, String m_post, String m_addr,
			String m_addrdetail, String m_station, String m_intro, String m_photo, BigDecimal m_point) {
		super();
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_gender = m_gender;
		this.m_email = m_email;
		this.m_birth = m_birth;
		this.m_phone = m_phone;
		this.m_school = m_school;
		this.m_schoolname = m_schoolname;
		this.m_schoolmajor = m_schoolmajor;
		this.m_working = m_working;
		this.m_army = m_army;
		this.m_bank = m_bank;
		this.m_account = m_account;
		this.m_accname = m_accname;
		this.m_post = m_post;
		this.m_addr = m_addr;
		this.m_addrdetail = m_addrdetail;
		this.m_station = m_station;
		this.m_intro = m_intro;
		this.m_photo = m_photo;
		this.m_point = m_point;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public BigDecimal getM_gender() {
		return m_gender;
	}

	public void setM_gender(BigDecimal m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_birth() {
		return m_birth;
	}

	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public BigDecimal getM_school() {
		return m_school;
	}

	public void setM_school(BigDecimal m_school) {
		this.m_school = m_school;
	}

	public String getM_schoolname() {
		return m_schoolname;
	}

	public void setM_schoolname(String m_schoolname) {
		this.m_schoolname = m_schoolname;
	}

	public String getM_schoolmajor() {
		return m_schoolmajor;
	}

	public void setM_schoolmajor(String m_schoolmajor) {
		this.m_schoolmajor = m_schoolmajor;
	}

	public BigDecimal getM_working() {
		return m_working;
	}

	public void setM_working(BigDecimal m_working) {
		this.m_working = m_working;
	}

	public BigDecimal getM_army() {
		return m_army;
	}

	public void setM_army(BigDecimal m_army) {
		this.m_army = m_army;
	}

	public String getM_bank() {
		return m_bank;
	}

	public void setM_bank(String m_bank) {
		this.m_bank = m_bank;
	}

	public String getM_account() {
		return m_account;
	}

	public void setM_account(String m_account) {
		this.m_account = m_account;
	}

	public String getM_accname() {
		return m_accname;
	}

	public void setM_accname(String m_accname) {
		this.m_accname = m_accname;
	}

	public String getM_post() {
		return m_post;
	}

	public void setM_post(String m_post) {
		this.m_post = m_post;
	}

	public String getM_addr() {
		return m_addr;
	}

	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}

	public String getM_addrdetail() {
		return m_addrdetail;
	}

	public void setM_addrdetail(String m_addrdetail) {
		this.m_addrdetail = m_addrdetail;
	}

	public String getM_station() {
		return m_station;
	}

	public void setM_station(String m_station) {
		this.m_station = m_station;
	}

	public String getM_intro() {
		return m_intro;
	}

	public void setM_intro(String m_intro) {
		this.m_intro = m_intro;
	}

	public String getM_photo() {
		return m_photo;
	}

	public void setM_photo(String m_photo) {
		this.m_photo = m_photo;
	}

	public BigDecimal getM_point() {
		return m_point;
	}

	public void setM_point(BigDecimal m_point) {
		this.m_point = m_point;
	}

}