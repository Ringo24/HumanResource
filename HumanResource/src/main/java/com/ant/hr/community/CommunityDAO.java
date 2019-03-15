package com.ant.hr.community;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommunityDAO {

	@Autowired
	private SqlSession ss;
	
	
}
