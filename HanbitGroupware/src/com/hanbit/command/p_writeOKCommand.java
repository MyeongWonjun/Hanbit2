package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class p_writeOKCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		 String path = null;
			String r_path = request.getServletContext().getRealPath("/upload") ;
			try {
				MultipartRequest mr = new MultipartRequest(
									request,
									r_path,
									500*1024*1024,
									"utf-8",
									new DefaultFileRenamePolicy());
				VO_board vo = new VO_board();
				vo.setType("공용문서함");
				vo.setName(mr.getParameter("name"));
				vo.setSubject(mr.getParameter("subject"));
				vo.setContent(mr.getParameter("content"));
				
				// 파일처리
				if(mr.getFile("file_name") != null){
					vo.setBoard_file(mr.getFilesystemName("file_name"));
					
				}else{
					vo.setFile_name("");
					vo.setOri_name("");
				}
				
				
				// DB처리 후 성공하면 list.jsp, 실패하면 write.jsp로 이동
				  int result =  Dao.getInsert(vo);
				  
				  
				  if(result >0){
					 path = "MyController?type=p_list"; 
				  }else{
					 path = "MyController?type=p_write" ;  
				  }
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		return path;
	}

}
