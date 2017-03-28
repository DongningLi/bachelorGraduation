<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<link rel="stylesheet" href="/lyqcssh/css/common.css" type="text/css"></link>
	<link rel="stylesheet" href="/lyqcssh/css/head.css" type="text/css"></link>
	<script type="text/javascript">
	
</script>

	<body>
		<div class="head1">
			<img class="logo" src="/lyqcssh/images/logo.png"
				style="margin-left: 157px;" />
			<ul class="navi1">
				<li>
					<a class="anavi" href="/lyqcssh/login.do?flag=logout"> 注销 </a>
				</li>
				<li>
					${loginuser.staid}
				</li>
			</ul>
		</div>
		<div class="nav">
			<div class="navlist">
				<li>
					<a href="headnavi.do?flag=staheadnavismain" style="color: #FFAB39;"><b>公司首页</b>
					</a>
				</li>
				<li>
					<a href="#" style="color: #FFAB39;"><b>汽车调度</b>
					</a>
				</li>
				<li>
					<a href="#" style="color: #FFAB39;"><b>汽车运营</b> </a>
				</li>
				<li>
					<a href="#" style="color: #FFAB39;"><b>汽车燃料</b> </a>
				</li>
				<li>
					<a href="#" style="color: #FFAB39;"><b>车辆状况</b> </a>
				</li>
				<li>
					<a href="#" style="color: #FFAB39;"><b>公司财务</b> </a>
				</li>
				<li>
					<a href="#" style="color: #FFAB39;"><b>公司简介</b> </a>
				</li>
			</div>
		</div>
	</body>
</html>
