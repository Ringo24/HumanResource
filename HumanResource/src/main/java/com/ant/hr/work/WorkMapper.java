package com.ant.hr.work;

import java.util.List;

import com.ant.hr.community.BBSno;
import com.ant.hr.community.Query;

public interface WorkMapper {

	public abstract int regCompany(Company c);
	public abstract int updateCompany(Company c);
	public abstract int deleteCompany(Company c);
	
	public abstract int regRecruit(Recruit c);
	public abstract int updateRecruit(Recruit c);
	public abstract int deleteRecruit(Recruit c);
	
	public abstract List<Company> getCompany(BBSno bn);
	public abstract List<Recruit> getRecruit(BBSno bn);
	public abstract List<Application> getApplication(BBSno bn);
	
	public abstract Company getOneCompany(Company c);
	public abstract Company getOneCompanybyR_no(Recruit r);
	public abstract Recruit getOneRecruit(Recruit r);
	
	public abstract int getAllCompanyCount();
	public abstract int getAllRecruitCount();
	public abstract int getApplicationCount();
	
	public abstract int applicate(Application a);
	public abstract int cancleApplication(Application a);
	
	public abstract Application searchApplication(Query q);
}
