<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示图片</title>
  </head>
  
  <body>
    <p>文件名fileName:${fileName}</p>
    <p>文件大小size:${size}</p>
    <p>后缀名extension:${extension}</p>
    <p>
    	<img src="images/${fileName}"/>
    </p>
  </body>
</html>
