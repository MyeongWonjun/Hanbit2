package com.hanbit.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.hanbit.vo.VO_board;
import com.hanbit.vo.VO_boardComment;
import com.hanbit.vo.VO_email;
import com.hanbit.vo.VO_employees;
import com.hanbit.vo.VO_schedule;

public class Dao {
private static SqlSession ss;
    
	private synchronized static SqlSession getSql(){
		if(ss == null){
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}
	// paging
		public static int getTotalCount(String email_addr){
			int count = getSql().selectOne("totalCount", email_addr);
			return count;
		}
		
		public static int getTotalCount2(String email_addr){
			int count = getSql().selectOne("totalCount2", email_addr);
			return count;
		}
		
		public static int getTotalCount3(String email_addr){
			int count = getSql().selectOne("totalCount3", email_addr);
			return count;
		}
		
		public static int getTotalCount4(String email_addr){
			int count = getSql().selectOne("totalCount4", email_addr);
			return count;
		}
		public static int getTotalCount5(Map<String, String> map){
			int count = getSql().selectOne("totalCount5", map);
			return count;
		}
	
	// login
	public VO_employees getLogin(String id, String pwd){
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("pwd", pwd);
		System.out.println(id+"/"+pwd);
		VO_employees vo_employees = getSql().selectOne("loginList", map);
		System.out.println("Here!");
		return vo_employees;
	}

	// employees list
	//github.com/MyeongWonjun/Hanbit2.git
		public List<VO_employees> getEmpList(){
			List<VO_employees> list = getSql().selectList("employee_list");
			return list;
		}
		
	// employees show
		public VO_employees getEmpShow(String id){
			VO_employees vo = getSql().selectOne("emp_show", id);
			return vo;
		}
		
	// employee search
		public List<VO_employees> getEmpSearch(Map<String, String> map){
			List<VO_employees> list = getSql().selectList("employee_search", map);
			return list;
		}
	
		// GetEmail list
				public static List<VO_email> getEmailList(Map<String, String> map){
					List<VO_email> list = getSql().selectList("getEmailList", map);
					return list;
				}
			// email write
				public void writeEmail(VO_email vo_email){
					getSql().insert("writeEmail", vo_email);
					getSql().commit();
				}
			// email oneList
				public VO_email getEmailOneList(String idx){
					VO_email vo_email = new VO_email();
					vo_email = getSql().selectOne("getEmailOneList", idx);
					return vo_email;
				}
			// email send list
				public static List<VO_email> getSendEmailList(Map<String, String> map){
					List<VO_email> list = getSql().selectList("sendEmailList", map);
					return list;
				}
				public static List<VO_email> getSendMEEmailList(Map<String, String> map){
					List<VO_email> list = getSql().selectList("sendMEEmailList", map);
					return list;
				}
				public static List<VO_email> getAllEmailList(Map<String, String> map){
					List<VO_email> list = getSql().selectList("getAllEmailList", map);
					return list;
				}
			// email search list
				public static List<VO_email> getsearchEmailList(Map<String, String> map){
					List<VO_email> list = getSql().selectList("searchEmailList", map);
					return list;
				}
			
			// email delete
				public void getDelete(String idx){
					getSql().delete("emailDelete", idx);
					getSql().commit();
				}
			// email answer
				public VO_email getAnswer(String idx){
					VO_email vo_email = getSql().selectOne("emailAnswer", idx);
					return vo_email;
				}
		

		//공용문서함 list 가져오기
		
		public List<VO_board> getp_list(){
			
			List<VO_board> list =getSql().selectList("getp_list");
			
			
			System.out.println(list.size());
			return list;
		}
		
	//공용문서함 insert 
	
		public static int insert_plist(VO_board vo){
			int res = getSql().insert("p_insert",vo);
			ss.commit();
			return res;
			
		}
		
		//p_onelist
		public static VO_board getp_oneList(String b_idx){
			VO_board bvo = getSql().selectOne("p_onelist", b_idx);
			return bvo;
		}

		
		//p_list hit수 증가
		public static void getphit_Update(VO_board bvo){
			getSql().update("p_hit", bvo);
			ss.commit();
		}
		
	// schedule list
		public List<VO_schedule> scheduleList(String id){
			List<VO_schedule> list = getSql().selectList("schedule", id);
			return list;
		}
		
	// vacation list
		public List<VO_schedule> vacationList(){
			List<VO_schedule> list = getSql().selectList("vacation");
			return list;
		}
		
	// vacation list
		public List<VO_schedule> btList(){
			List<VO_schedule> list = getSql().selectList("bt");
			return list;
		}
	// schedule show
		public VO_schedule scheduleShow(String idx){
			VO_schedule sc = getSql().selectOne("schedule_show", idx);
			return sc;
		}
	// schedule update
		public void updateSchedule(VO_schedule vo){
			System.out.println(vo.getId());
			getSql().update("schedule_update", vo);
			ss.commit();
		}
	// schedule insert
		public void insertSchedule(VO_schedule vo){
			getSql().insert("schedule_insert", vo);
			ss.commit();
		}


		
		// board
		public List<VO_board> getBoardList(Map<String, String> map){ 
	         List<VO_board> boardList =getSql().selectList("boardList",map);
	         return boardList;
	      }
		public static int getBoardInsert(VO_board vo){
				int res = getSql().insert("boardInsert", vo);
				ss.commit();
				return res;
		 }
		public VO_board getBoardOneList(String b_idx){ 
	         VO_board vo =getSql().selectOne("boardOneList",b_idx);
	         return vo;
	      }
		public void getBoardDel(String b_idx){ 
			 getSql().delete("boardDel",b_idx);
			 ss.commit();
		 }
		public static int getBoardUpdate(VO_board vo){ 
			 int result = getSql().update("boardUp", vo);
			 ss.commit();
			 return result;
		 }
		
		//board comment
		public static List<VO_boardComment> getCommentList(String b_idx){
			List<VO_boardComment> c_list = getSql().selectList("c_list",b_idx);
			return c_list;
		}
		public static int getCommentInsert(VO_boardComment cvo){
			int res = getSql().insert("commentInsert", cvo);
			ss.commit();
			return res;
		}
		
	

	 public VO_employees getsetem(String id) {
			VO_employees vo_employees= getSql().selectOne("em_one",id);
			return vo_employees;
		}
	 
	 public List<VO_board> getHomeNotice(){
		 List<VO_board> list = getSql().selectList("homeNotice");
		 return list;
	 }
	 
	 public List<VO_email> getHomeEmail(String email_addr){
			List<VO_email> list = getSql().selectList("getHomeEmail", email_addr);
			return list;
		}



}















