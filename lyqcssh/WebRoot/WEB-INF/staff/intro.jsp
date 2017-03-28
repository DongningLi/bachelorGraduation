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

		<title>新增员工</title>
		<link rel="stylesheet" href="/lyqcssh/css/common.css" type="text/css"></link>
		<link rel="stylesheet" href="/lyqcssh/css/register.css"
			type="text/css"></link>
		<script type="text/javascript" src="/lyqcssh/js/calendar.js"></script>
		<script type="text/javascript" src="/lyqcssh/js/calendar-en.js"></script>
		<script type="text/javascript" src="/lyqcssh/js/calendar-setup.js"></script>
		<script type="text/javascript" src="/lyqcssh/js/changedep.js"></script>
		<script type="text/javascript" src="/lyqcssh/js/jquery-1.3.2.min.js"></script>
		<link rel="stylesheet" href="/lyqcssh/css/calendar-win2k-1.css"
			type="text/css"></link>
	</head>

	<body>
		<div class="all">
			<div class="reg_table1">
				<form name="regform" action="/lyqcssh/edit.do?flag=edit&id=${loginuser.staid}" method="post">
					<table>
						<tr>
							<td class="tb_td1">
								员工编号：
							</td>
							<td>
								<input type="text" name="staid" readOnly="true"
									value="${loginuser.staid}"  style="border:solid 3px red"/>
							</td>
							<td>
								不可修改
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工姓名：
							</td>
							<td class="tb_td2">
								<input type="text" name="staname" value="${loginuser.staname}" />
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工部门：
							</td>
							<td>
								<input type="text" name="stadep" value="${loginuser.stadep}" readOnly="true"; style="border:solid 3px red"/>
							</td>
							<td>
								不可修改
							</td>
						</tr>
						<tr >
							<td class="tb_td1">
								员工职位：
							</td>
							<td>
								<input type="text" name="staocp" value="${loginuser.staocp}"readOnly="true"; style="border:solid 3px red" />
							</td>
							<td>
								不可修改
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工性别：
							</td>
							<td>
								<input type="text" name="stasex" value="${loginuser.stasex}"readOnly="true"; style="border:solid 3px red" />
							</td>
							<td>不可修改</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工密码：
							</td>
							<td>
								<input type="text" name="stapass" value="${loginuser.stapass}" />
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工身份证号：
							</td>
							<td>
								<input type="text" name="staidt" onkeyup=value;=
									value.replace(/[^\a-\z\A-\Z0-9]/g, ''); readOnly="true";
									value="${loginuser.staidt}" style="border:solid 3px red" />
							</td>
							<td>
								不可修改
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工生日：
							</td>
							<td>
								<input name="stabirth" type="text" class="data" id="birthday"
									value="1975-01-01" size="10" maxlength="8" readonly="true">
								<input name="bir" type="button" id="bir" value="...">
							</td>
							<td>
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工电话号码：
							</td>
							<td>
								<input type="text" name="staphone" value="${loginuser.staphone}" />
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工邮箱：
							</td>
							<td>
								<input type="text" name="staemail" value="${loginuser.staemail}" />
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								入职时间：
							</td>
							<td>
								<input name="stacrt" type="text" readOnly="true"
									value="${loginuser.stacrt}" style="border:solid 3px red">
							</td>
							<td>
								不可修改
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工荣誉：
							</td>
							<td>
								<textarea style="width: 550px; height: 105px; resize: none;"
									type="text" name="stahon">${loginuser.stahon}</textarea>
							</td>
							<td></td>
						</tr>
						<tr>
							<td>
							</td>
							<td>
								<input name="submit" type="submit" value="确认编辑" />
							</td>
							<td></td>
						</tr>
					</table>
				</form>

				<script language="JavaScript" type="text/JavaScript">
	Calendar.setup( {
		inputField : "birthday", // ID of the input field
		ifFormat : "%Y-%m-%d", // the date format
		button : "bir" // ID of the button
	});
</script>

			</div>
		</div>
	</body>
</html>
