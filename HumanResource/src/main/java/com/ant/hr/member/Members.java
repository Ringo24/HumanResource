package com.ant.hr.member;

import java.util.List;

public class Members {
	private List<Member> member;

	public Members() {	}

	public Members(List<Member> member) {
		this.member = member;
	}

	public List<Member> getMember() {
		return member;
	}

	public void setMember(List<Member> member) {
		this.member = member;
	}
	
}
