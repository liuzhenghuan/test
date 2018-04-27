<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>浏览文件</title>
    
	  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	  <script type="text/javascript" src="js/uploadPreview.js"></script>
  </head>
  
  <body>
    <form method="post" action="show" enctype="multipart/form-data">
    	<div><img id="imgPre" name="imgPre" width="120" height="120" /></div>
		<input type="file" id="up" name="up" />
    	<p><input type="submit"/> </p>
    </form>
    <script type="text/javascript">
	$(function () {
		$("#up").uploadPreview({Img: "imgPre", Width: 120, Height: 120 });
	});
	</script>
  </body>
</html>
