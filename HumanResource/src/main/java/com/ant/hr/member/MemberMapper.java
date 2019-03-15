package com.ant.hr.member;

public interface MemberMapper {
	public abstract Member getMemberInfoByM_ID(Member m);
	
	public abstract int join(Member m);
	
	public abstract int joinBankInfo(Member m);
	
	public abstract int delete(Member m);
	
	public abstract int updateWithPhoto(Member m);
	
	public abstract int updateWithoutPhoto(Member m);
	
	public abstract int updateBankInfo(Member m);
}
