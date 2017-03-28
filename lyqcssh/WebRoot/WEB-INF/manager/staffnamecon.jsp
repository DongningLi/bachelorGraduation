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
		<link rel="stylesheet" href="../../css/common.css" type="text/css"></link>
		<script type="text/javascript" src="/lyqcssh/js/my.js"></script>
	</head>

	<body>
		<table style="width: 790px; height: 30px;" border="1" align="center">
			<tr align="center">
				<td colspan=2
					style="height: 40px text-align :       left; font-weight: bold;">
					员工详情简介
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					员工ID：
				</td>
				<td>
					${staffnamecon.staid}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					姓名：
				</td>
				<td>
					${staffnamecon.staname}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					部门：
				</td>
				<td>
					${staffnamecon.stadep}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					职位：
				</td>
				<td>
					${staffnamecon.staocp}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					性别：
				</td>
				<td>
					${staffnamecon.stasex}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					员工生日：
				</td>
				<td>
					${staffnamecon.stabirth}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					电话：
				</td>
				<td>
					${staffnamecon.staphone}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					邮箱：
				</td>
				<td>
					${staffnamecon.staemail}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					身份证号：
				</td>
				<td>
					${staffnamecon.staidt}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					入职日期：
				</td>
				<td>
					${staffnamecon.stacrt}
				</td>
			</tr>
			<tr>
				<td
					style="width: 130px; height: 157px; text-align: right; font-size: 13px; font-weight: bold; padding-right: 10px;">
					荣誉：
				</td>
				<td>
					${staffnamecon.stahon}
				</td>
			</tr>
		</table>
		<table style="width: 790px;" align="center">
			<tr>
				<td>
					<a class='delname'
						href="${pageContext.request.contextPath}/mngadsdeal.do?flag=delstaff&staname=${staffnamecon.staid}"
						style="text-decoration: none;"> <input type="button"
							value="删除" style="float: right;" /> </a>
				</td>
				<td>

					<a
						href="${pageContext.request.contextPath}/mngnvch.do?flag=mngintro&pageNow=${currpage}"
						style="text-decoration: none"> <input type="button" value="返回" "/>
					</a>
				</td>
			</tr>
		</table>

	</body>
</html>
