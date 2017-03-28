<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><link rel="stylesheet" href="../../css/common.css" type="text/css"></link></head>


	<body>
		<table style="width: 920px;" >

			<c:forEach items="${adslist}" var="ads">
				<tr>
					<td>
					<a href="adbyadname.do?flag=adbyadname&ads=${ads.adsname}&currpage=${currpage}" style="text-decoration:none">${ads.adsname}</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td style="width: 670px;"></td>
				<td>
					<c:forEach var="i" begin="1" end="${pageCount}">
						<a
							href="${pageContext.request.contextPath}/nvchoose.do?flag=staads&pageNow=${i}"><b>${i}</b>
						</a>
					</c:forEach>
				</td>
			</tr>
		</table>

	</body>
</html>
