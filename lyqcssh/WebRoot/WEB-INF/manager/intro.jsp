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
	<form action="stabyname.do?flag=stabysearch" method="post" align="center">
					<table>
						<tr>
							<td>
								输入员工id：
							</td>
							<td>
								<input type="text" name="staid" />
							</td>
							<td>
							<input type="submit" value="搜索详情" />
							</td>
						</tr>
					</table>
				</form>
		<table style="width: 720px;">
			<tr>
				<td style="width: 450px; height: 30px;" align="center">
					<b>员工id</b>
				</td>
				<td align="center">
					<b>员工姓名</b>
				</td>
			</tr>
			<c:forEach items="${stafflist}" var="staff">
				<tr>
					<td style="height: 30px; width: 450px;" align="center">
						<a href="stabyname.do?flag=stabyname&id=${staff.staid}&currpage=${currpage}" style="text-decoration:none">${staff.staid}</a>
					</td>
					<td align="center">
						<a href="stabyname.do?flag=stabyname&id=${staff.staid}&currpage=${currpage}" style="text-decoration:none">${staff.staname}</a>
					</td>
					<td>
						<a class='delname'
							href="${pageContext.request.contextPath}/mngadsdeal.do?flag=delstaff&staname=${staff.staid}">删除</a>
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td>
					<c:forEach var="i" begin="1" end="${pageCount}">
						<a
							href="${pageContext.request.contextPath}/mngnvch.do?flag=mnginfo&pageNow=${i}"><b>${i}</b>
						</a>
					</c:forEach>
				</td>
			</tr>
		</table>

	</body>
</html>
