package com.hanbit.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hanbit.vo.VO_employees;

public class Dao {
private static SqlSession ss;
    
	private synchronized static SqlSession getSql(){
		if(ss == null){
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}
	
	// 임직원정보 리스트
		public List<VO_employees> getList(){
			List<VO_employees> list = getSql().selectList("list");
			return list;
		}
}