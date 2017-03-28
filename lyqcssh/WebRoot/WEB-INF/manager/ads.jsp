<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<script type="text/javascript" src="/lyqcssh/js/jquery-1.3.1.js"></script>
	<script type="text/javascript" src="/lyqcssh/js/my.js"></script>

	<body>
		<table style="width: 920px;">
			<tr>
				<td style="width: 750px; height: 30px;" align="center">
					<b>公告名</b>
				</td>
				<td align="center">
					<b>发布者</b>
				</td>
			</tr>
			<c:forEach items="${adslist}" var="ads">
				<tr>
					<td style="height: 30px; width: 750px;" align="center">
						<a href="mngadsdeal.do?flag=adbyadname&ads=${ads.adsname}&currpage=${currpage}" style="text-decoration:none">${ads.adsname}
					</a></td>
					<td align="center">
						${ads.mngid}
					</td>
					<td>
						<a class='delname'
							href="${pageContext.request.contextPath}/mngadsdeal.do?flag=delads&name=${ads.adsname}">删除</a>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td>
					<c:forEach var="i" begin="1" end="${pageCount}">
						<a
							href="${pageContext.request.contextPath}/mngnvch.do?flag=mngads&pageNow=${i}"><b>${i}</b>
						</a>
					</c:forEach>
				</td>
			</tr>
		</table>

	</body>
</html>
