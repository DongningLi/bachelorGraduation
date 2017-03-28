<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml">

<head>
<script language="javascript">
timer=setTimeout('location.href="mngnvch.do?flag=mngintro";',1500); //跳转
</script>

</head>
	<body >
		  
		<div style="font-size:27px; text-align: center; margin: 0px auto;color:#2C3078;">
			<b>嗯！删除成功！
			<br />
			将在2秒后重新跳转到雇员详情界面</b>
		   
	</body>

</html>