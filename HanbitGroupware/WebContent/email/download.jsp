<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String f_name = request.getParameter("f_name");
	
	String path = getServletContext().getRealPath("/upload");
	response.setContentType("application/x-msdownload");
	response.setHeader("Content-Disposition", "attachment;filename="+f_name);
	
	File file = new File(path+"/"+new String(f_name.getBytes(),"utf-8"));
	byte[] data = new byte[1024];
	FileInputStream fis = null;
	BufferedInputStream bis = null;
	BufferedOutputStream bos = null;
	
	if(file.isFile()){
		try{
			fis = new FileInputStream(file);
			bis = new BufferedInputStream(fis);
			bos = new BufferedOutputStream(response.getOutputStream());
			
			int read;
			while((read=bis.read(data)) != -1){
				bos.write(data);
			}
			bos.flush();
			out.clear();
			out = pageContext.popBody();
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