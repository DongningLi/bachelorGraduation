<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String loginmsg = request.getParameter("loginmsg");
	request.getSession(true);
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
		<title>SmartWizard</title>

		<link href="style/style_wizard.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
		<script type="text/javascript" src="js/SmartWizard.js"></script>

		<script language="JavaScript">
        $().ready(function() {
            $('.wiz-container').smartWizard(
                    {selectedStep: 0,
                        validatorFunc:validateTabs}
            );
        });
        
        function validateTabs(tabIdx){
            ret = true;
            return ret;
        }

function check_input() {
if( form.userid.value.length<1) 
	{
		alert("请输入工号.")
		return false;
	}
	if( form.userpass.value.length<1) 
	{
		alert("请输入密码.")
		return false;
	}
}
</script>


	</head>
	<body>
		<center>
			<img class="logo" src="/lyqcssh/images/logo.png" />
		</center>
		<div id="smartwizard" class="wiz-container" style="margin-left: 257px">
			<ul id="wizard-anchor">
				<li>
					<a href="#wizard-1">
						<h2 style="padding-top: 23px;">
							欢迎访问公司 请先登录
						</h2> </a>
				</li>
			</ul>
			<div class="wiz-content">
				<form action="login.do?flag=login" method="post" name="form"
					style="margin: 57px 0 0 350px" onSubmit="return check_input()"
					; align="center">
					<table>
						<tr>
							<b>${mes}</b>
						</tr>
						<%
							HttpSession sess = request.getSession();
							sess.invalidate();
						%>
						<tr>
							<td>
								工号:
							</td>
							<td>
								<input type="text" name="userid" />
							</td>
						</tr>
						<tr>
							<td>
								密码:
							</td>
							<td>
								<input type="password" name="userpass" />
							</td>
						</tr>
						<tr>
							<td>
								验证码：
							</td>
							<td>
								请输入验证码，看不清楚换一张？
							</td>
							<td>
								[1234]
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" value="登陆" />
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>