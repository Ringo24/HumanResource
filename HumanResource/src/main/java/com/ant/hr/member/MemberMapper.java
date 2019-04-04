package com.ant.hr.member;

import java.util.List;

import com.ant.hr.community.BBSno;
import com.ant.hr.community.Query;

public interface MemberMapper {
	public abstract Member getMemberInfoByM_ID(Member m);
	
	public abstract List<Member> getMember(BBSno bn);
	
	public abstract List<Member> search(Query q);
	
	public abstract int join(Member m);
	
	public abstract int joinBankInfo(Member m);
	
	public abstract int delete(Member m);
	
	public abstract int updateWithPhoto(Member m);
	
	public abstract int updateWithoutPhoto(Member m);
	
	public abstract int updateBankInfo(Member m);
	
	public abstract int getAllMemberCount();
}
