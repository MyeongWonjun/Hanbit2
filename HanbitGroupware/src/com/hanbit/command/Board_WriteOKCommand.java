package com.hanbit.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Board_WriteOKCommand implements Command{
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
				VO_board bvo = new VO_board();
				
				//System.out.println("제목"+mr.getParameter("subject"));
				bvo.setBoard_type(mr.getParameter("board_type"));
				String board_type = bvo.getBoard_type();
				bvo.setSubject(mr.getParameter("subject"));
				bvo.setName(mr.getParameter("name"));
				bvo.setContent(mr.getParameter("content"));
				
				/*System.out.println("OK커맨드");
				System.out.println(bvo.getName());*/
				// 파일처리
				if(mr.getFile("board_file") != null){
					bvo.setBoard_file(mr.getFilesystemName("board_file"));
					
				}else{
					bvo.setBoard_file("");
					
				}
				
				
				// DB처리 후 성공하면 list.jsp, 실패하면 write.jsp로 이동
				  int result = Dao.getBoardInsert(bvo);
				  
				  if(result >0){
					 path = "BoardController?type=boardList&board_type="+board_type; 
				  }else{
					 path = "BoardController?type=boardWrite" ;  
				  }
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		return path;
	}
}
