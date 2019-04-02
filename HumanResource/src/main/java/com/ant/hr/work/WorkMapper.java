package com.ant.hr.work;

import java.util.List;

import com.ant.hr.community.BBSno;

public interface WorkMapper {

	public abstract int regCompany(Company c);
	
	public abstract List<Company> getCompany(BBSno bn);
	
	public abstract Company getOneCompany(Company c);
	
	public abstract int getAllCompanyCount();
	public abstract int getAllWorkCount();
}
