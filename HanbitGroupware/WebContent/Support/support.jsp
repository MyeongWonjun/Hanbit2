<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/HanbitGroupware/script/editor/ckeditor/ckeditor.js"></script>
</head>
<body>
	<form>
		<textarea name="editor1" id="editor1" rows="10" cols="80">
			This
		</textarea>
		<script>
			CKEDITOR.replace('editor1',{toolbar : 'Basic', filebrowserImageUploadUrl : 'fileupload.jsp?type=Images', width : '100%', height : '200'});
		</script>
	</form>
</body>
</html>