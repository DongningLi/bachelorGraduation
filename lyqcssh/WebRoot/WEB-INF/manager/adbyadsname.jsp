<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'adbyadsname.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<table style="width: 920px; height: 30px;">
			<tr style="width: 920px; height: 30px;" align="center">
				<td>
					<textarea style="width: 920px; height: 327px; resize: none; border:none"
									type="text" name="stahon" >${adsnamecon.adscon}</textarea>
				</td>
			</tr>
		</table>
		<a href="${pageContext.request.contextPath}/mngnvch.do?flag=mngads&pageNow=${currpage}" style="text-decoration:none">
			<input type="button" value="返回" style="float: right;" /> </a>
	</body>
</html>
