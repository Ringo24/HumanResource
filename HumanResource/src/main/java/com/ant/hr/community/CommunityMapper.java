package com.ant.hr.community;

import java.util.List;

public interface CommunityMapper {

	public abstract int write(BBS b);
	public abstract int writeReply(Reply r);
	
	public abstract int update(BBS b);
	public abstract int updateReply(Reply r);
	
	public abstract int delete(BBS b);
	public abstract int deleteReplybyRpno(Reply r);
	public abstract int deleteReplybyBno(Reply r);
	
	public abstract BBS getOneBBS(BBS b);	
	public abstract List<Reply> getReply(BBS b);
	public abstract List<BBS> getBBS(BBSno bn);
	public abstract List<BBS> search(Query q);
	
	public abstract int getAllBBSCount();
	
}
