package com.hanbit.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.hanbit.vo.VO_board;
import com.hanbit.vo.VO_email;
import com.hanbit.vo.VO_employees;

public class Dao {
private static SqlSession ss;
    
	private synchronized static SqlSession getSql(){
		if(ss == null){
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}
	
	// login
	public VO_employees getLogin(String id, String pwd){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		VO_employees vo_employees = getSql().selectOne("loginList", map);
		return vo_employees;
	}

	// employees list
	//github.com/MyeongWonjun/Hanbit2.git
		public List<VO_employees> getEmpList(){
			List<VO_employees> list = getSql().selectList("employee_list");
			return list;
		}
		
	// employee search
		public List<VO_employees> getEmpSearch(Map<String, String> map){
			List<VO_employees> list = getSql().selectList("employee_search", map);
			return list;
		}
	
	// GetEmail list
		public List<VO_email> getEmailList(String email_addr){
			List<VO_email> list = getSql().selectList("getEmailList", email_addr);
			return list;
		}
	// email write
		public void writeEmail(VO_email vo_email){
			getSql().insert("writeEmail", vo_email);
			getSql().commit();
		}

		
		// Board_list
		public static List<VO_board> getBoardList(){
			List<VO_board> boardList = getSql().selectList("boardList");
			return boardList;
		}
		// board_insert
		public static int getBoardInsert(VO_board vo){
			int res = getSql().insert("boardInsert", vo);
			ss.commit();
			return res;
		}


	// email oneList
		public VO_email getEmailOneList(String idx){
			VO_email vo_email = new VO_email();
			vo_email = getSql().selectOne("getEmailOneList", idx);
			return vo_email;
		}
}












