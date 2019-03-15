package com.ant.hr.community;

import java.math.BigDecimal;

public class BBSno {
	private BigDecimal start;
	private BigDecimal end;
	
	public BBSno() {super();}
	
	public BBSno(BigDecimal start, BigDecimal end) {
		this.start = start;
		this.end = end;
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
}
