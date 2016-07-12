package com.hanbit.mybatis;

import org.apache.ibatis.session.SqlSession;

public class Dao {
	private static SqlSession ss;
	public Dao() {
		ss = DBService.getFactory().openSession();
	}
	
	public void test(){
		ss.selectOne("s");
	}
	
	
}