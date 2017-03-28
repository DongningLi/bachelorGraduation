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

		<title>新增公告</title>
		<link rel="stylesheet" href="/lyqcssh/css/common.css" type="text/css"></link>
		<link rel="stylesheet" href="/lyqcssh/css/register.css"
			type="text/css"></link>
	</head>

<script language="javascript">
function checkup()
{
  if(window.confirm("确定发布吗？"))
  {
   return true;
  }
  else
  {
    return false;
  }
}
</script>
	<body>
		<div class="all">
			<div class="reg_table1">
				<form name="regfcrm" action="/lyqcssh/pblsads.do?flag=pblsads" method="post" onsubmit="return checkup()">
					<table>
						<tr>
							<td class="tb_td1">
								公告名：
							</td>
							<td>
								<input type="text" name="adsname" style="width: 550px;" />
							</td>
							<td></td>
						</tr>
						<tr>
							<td class="tb_td1">
								公告内容：
							</td>
							<td>
								<textarea style="width: 550px; height: 379px; resize: none;"
									type="text" name="adscon"></textarea>
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

			</div>
		</div>
	</body>
</html>
