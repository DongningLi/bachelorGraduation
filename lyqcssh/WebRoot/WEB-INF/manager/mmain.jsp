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

		<title>My JSP 'smain.jsp' starting page</title>
		<link rel="stylesheet" href="/lyqcssh/css/main.css" type="text/css"></link>
		<link rel="stylesheet" href="/lyqcssh/css/common.css" type="text/css"></link>
	</head>

	<jsp:include page="head.jsp" />
	<div class="all">
		<div class="navileft">
			<div class='card-holder'>
				<div class='card-wrapper'>
					<a href="mngnvch.do?flag=mngads" target="mmainframe">
						<div class='card bg-01'>
							<span class='card-content'>查看通知公告</span>
						</div> </a>
				</div>
				<div class='card-wrapper'>
					<a href="mngnvch.do?flag=mngintro" target="mmainframe">
						<div class='card bg-02'>
							<span class='card-content'>员工信息详情</span>
						</div> </a>
				</div>
				<div class='card-wrapper'>
					<a href="mngnvch.do?flag=mngnewads" target="mmainframe">
						<div class='card bg-03'>
							<span class='card-content'>发布新的公告</span>
						</div> </a>
				</div>
				<div class='card-wrapper'>
					<a href="mngnvch.do?flag=mnginfo" target="mmainframe">
						<div class='card bg-04'>
							<span class='card-content'>添加员工信息</span>
						</div> </a>
				</div>
			</div>
		</div>
		<div class="mainright">
		<IFRAME scrolling="no" frameborder="no" name="mmainframe" src="mngnvch.do?flag=mngads"></IFRAME>
		</div>
	</div>
	<jsp:include page="foot.jsp" />
</html>
