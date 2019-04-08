package com.ant.hr.community;

import java.math.BigDecimal;

public class BBSno {
	private BigDecimal start;
	private BigDecimal end;
	private String bbs;
	
	public BBSno() {super();}
	
	public BBSno(BigDecimal start, BigDecimal end) {
		this.start = start;
		this.end = end;
	}
	
	public BBSno(BigDecimal start, BigDecimal end, String bbs) {
		super();
		this.start = start;
		this.end = end;
		this.bbs = bbs;
	}

	public BigDecimal getStart() {
		return start;
	}
	public void setStart(BigDecimal start) {
		this.start = start;
	}
	public BigDecimal getEnd() {
		return end;
	}
	public void setEnd(BigDecimal end) {
		this.end = end;
	}
	public String getBbs() {
		return bbs;
	}
	public void setBbs(String bbs) {
		this.bbs = bbs;
	}
}
