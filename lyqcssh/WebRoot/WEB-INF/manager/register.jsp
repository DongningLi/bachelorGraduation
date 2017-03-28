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
		<script type="text/javascript" src="/lyqcssh/js/my.js"></script>
	</head>

	<script type="text/javascript">
 function checkpwd(){
  var p1=document.regform.stapass.value;//获取密码框的值
  var p2=document.regform.starepass.value;//获取重新输入的密码值
  if(p1!=p2){//判断两次输入的值是否一致，不一致则显示错误信息
   document.getElementById("msg").innerHTML="密码不一致，请重新输入";//在div显示错误信息
  }else{
   document.getElementById("msg").innerHTML="";
  }
 }

</script>

	<script language="JavaScript">
	function check_input() {
	if( regform.staid.value.length<1) 
	{
		alert("请输入工号.")
		return false;
	}
	if( regform.stapass.value.length<1) 
	{
		alert("请输入密码.")
		return false;
	}
	if( regform.staname.value.length<1) 
	{
		alert("请输入姓名.")
		return false;
	}
		if( regform.stadep.value.length<1) 
	{
		alert("请选择部门.")
		return false;
	}
		if( regform.stasex.value.length<1) 
	{
		alert("请选择性别.")
		return false;
	}
		if( regform.stacrt.value.length<1) 
	{
		alert("请选择入职时间.")
		return false;
	}
}
</script>

	<body>
		<div class="all">
			<div class="reg_table1">
				<form name="regform" action="/lyqcssh/register.do?flag=regStaff"
					method="post" onSubmit="return check_input()">
					<table>
						<tr>
							<td class="tb_td1">
								员工编号：
							</td>
							<td>
								<input type="text" name="staid" />
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工姓名：
							</td>
							<td class="tb_td2">
								<input type="text" name="staname" />
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工部门：
							</td>
							<td>
								<select name="stadep" onchange="changedep(this);">
									<option>
										----选择部门----
									</option>
									<option value="业务部">
										业务部
									</option>
									<option value="安检部">
										安全质检部
									</option>
									<option value="开发部">
										技术开发部
									</option>
									<option value="综合部">
										综合部
									</option>
								</select>
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr id="ocp_yewu">
							<td class="tb_td1">
								员工职位：
							</td>
							<td>
								<select name="staocp">
									<option value="业务主管">
										业务主管
									</option>
									<option value="车辆调度兼外联员">
										车辆调度兼外联员
									</option>
									<option value="业务统计兼外联员">
										业务统计兼外联员
									</option>
								</select>
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr id="ocp_anjian">
							<td class="tb_td1">
								员工职位：
							</td>
							<td>
								<select name="staocp">
									<option value="部门主管">
										部门主管
									</option>
									<option value="一般业务人员">
										一般业务人员
									</option>
								</select>
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr id="ocp_kaifa">
							<td class="tb_td1">
								员工职位：
							</td>
							<td>
								<select name="staocp">
									<option value="部门主管">
										部门主管
									</option>
									<option value="一般开发人员">
										一般开发人员
									</option>
									<option value="测试兼维护人员">
										测试兼维护人员
									</option>
								</select>
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr id="ocp_zonghe">
							<td class="tb_td1">
								员工职位：
							</td>
							<td>
								<select name="staocp">
									<option value="部门主管">
										部门主管
									</option>
									<option value="出纳兼事务员">
										出纳兼事务员
									</option>
									<option value="人事兼行政员">
										人事兼行政员
									</option>
								</select>
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工性别：
							</td>
							<td>
								<input type="radio" name="stasex" value="男" />
								男
								<input type="radio" name="stasex" value="女" />
								女
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工初始密码：
							</td>
							<td>
								<input type="password" name="stapass" />
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								确认密码：
							</td>
							<td>
								<input type="password" name="starepass" onchange="checkpwd()" />
							</td>
							<td>
								<div id="msg" style="color: red;"></div>
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工身份证号：
							</td>
							<td>
								<input type="text" name="staidt" id="staidt" />
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工生日：
							</td>
							<td>
								<input name="stabirth" type="text" class="data" id="birthday"
									value="1975-01-01" size="10" maxlength="8" readonly="true"
									value="&nbsp">
								<input name="bir" type="button" id="bir" value="...">
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工电话号码：
							</td>
							<td>
								<input type="text" name="staphone" value="&nbsp" />
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工邮箱：
							</td>
							<td>
								<input type="text" name="staemail" value="&nbsp" />
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								入职时间：
							</td>
							<td>
								<input name="stacrt" type="text" class="data" id="empdate"
									value="2000-01-01" size="10" maxlength="8" readonly="true">
								<input name="emp" type="button" id="emp" value="...">
							</td>
							<td>
								不可为空
							</td>
						</tr>
						<tr>
							<td class="tb_td1">
								员工荣誉：
							</td>
							<td>
								<textarea style="width: 550px; height: 105px; resize: none;"
									type="text" name="stahon">&nbsp</textarea>
							</td>
							<td></td>
						</tr>
						<tr>
							<td>
							</td>
							<td>
								<input name="submit" type="submit" value="" class="button1" />
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
	Calendar.setup( {
		inputField : "empdate", // ID of the input field
		ifFormat : "%Y-%m-%d", // the date format
		button : "emp" // ID of the button
	});
</script>

			</div>
		</div>
	</body>
</html>
