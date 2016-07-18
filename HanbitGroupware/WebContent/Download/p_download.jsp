<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   String f_name = request.getParameter("board_file");
   
  
   // 파일이 있는 실제 경로 구하기
   String path = getServletContext().getRealPath("../upload");
   
   // 다운로드 받을 수 있도록 클라이언트에 지시
   response.setContentType("application/x-msdownload");
   // 응답받는 클라이언트의 헤더정보 변경 (첨부파일이 있다고 표시)
   response.setHeader("Content-Disposition", "attachment;filename="+f_name);
   
   //////////////////////실제 입출력 스트림/////////////////////////////
   ////////////// 반드시 바이트 스트림 사용 (문자가 아니므로)////////////
   File file = new File(path+"/"+new String(f_name.getBytes(),"utf-8"));
   byte[] data = new byte[1024];
   FileInputStream fis = null;
   BufferedInputStream bis = null;
   BufferedOutputStream bos = null;
   
   if(file.isFile()){
	   try{
		   // 서벌에 존재한는 해당위의 파일 가져오기 
		   fis = new FileInputStream(file);
		   bis = new BufferedInputStream(fis);
		   
		   // 가져온 파일 쓰기
		   bos = new BufferedOutputStream(response.getOutputStream());
		   
		   int read;
		   while((read=bis.read(data)) != -1){
			   bos.write(data);
		   }
		   bos.flush();
		   // jsp출력스트림과  서블릿 출력 스트림 겹쳐서 오류발생하는 경우가 존재
		   out.clear();
		   out = pageContext.pushBody();
	   }catch(Exception e){
		   
	   }finally{
		   try{
			   bos.close();
			   bis.close();
			   fis.close();
		   }catch(Exception e){
			   
		   }   
	   }
   }
%>



