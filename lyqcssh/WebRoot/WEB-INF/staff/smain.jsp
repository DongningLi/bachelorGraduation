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
					<a href="nvchoose.do?flag=staads" target="smainframe">
						<div class='card bg-01'>
							<span class='card-content'>查看通知公告</span>
						</div> </a>
				</div>
				<div class='card-wrapper'>
					<a href="nvchoose.do?flag=staintro" target="smainframe">
						<div class='card bg-02'>
							<span class='card-content'>个人信息详情</span>
						</div> </a>
				</div>
			</div>
		</div>
		<div class="mainright">
		<IFRAME frameborder="no" name="smainframe" src="nvchoose.do?flag=staads" scrolling="no"></IFRAME>
		</div>
	</div>
	<jsp:include page="foot.jsp" />
</html>
