<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<title>My JSP 'MyJsp.jsp' starting page</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="styles.css">

		<style type="text/css">
body {
	font-size: 13px;
	font-family: Verdana;
	margin: 0;
}

a {
	color: white;
	text-decoration: none
}

a:hover {
	text-decoration: underline;
}

.logoright {
	float: right;
	color: #233B87;
	height: 100%;
	width: 190px;
	margin: 50px 50px 15px 0;
}

.navi1 {
	float: right;
	font-weight:bold;
}

a.anavi:link,a.anavi:visited{
	color:#233B87;
	text-decoration: none;
}

a.anavi:hover {
	color:red;
}

.search {
	width: 200px;
	font-size: 19px;
	color: black;
	margin-top: 50px;
	text-align: center;
}

.nav {
	height: 25px;
	width: 100%;
	background: #233B87;
}

.navlist {
	margin: 0 0 0 110px;
	width: 800px;
	text-align: center;
	height: 25px;
	line-height: 25px;
}

.navlist li {
	list-style: none;
	float: left;
	width: 100px;
	height: 21px;
	color: #FFAB39;
}

.navlist li a span {
	padding: 2px 5px;
	background: url("./images/txtb/findbg.png");
	background-size: 100% 100%;
	background-position: center;
}

.main {
	height: 375px;
	margin: 40px 170px 0 170px;
}

.left {
	float: left;
	width: 290px
}

.lefttop {
	background: #F1ECCA;
	width: 290px;
	height: 260px;
	margin-left: 30px;
	float: left;
}

.lefttop1 li {
	height: 20px;
	list-style: none;
	background: #000290;
	color: white;
	text-align: center;
	margin: 10px 10px;
	font-size: 14px;
	font-weight: bold;
	padding-bottom: 10px;
}

.lefttop2 {
	width: 125px;
	list-style: none;
	float: right;
	text-align: center;
	margin-right: 10px;
	float: right
}

.lefttop2 li {
	color: #000290;
	line-height: 30px;
}

.lefttop2 li span {
	padding: 5px 20px;
	background: url("./images/txtb/findbg.png");
	background-size: 100% 100%;
	background-position: center;
	font-size: 18px;
	color: #000290;
}

.leftleft {
	float: left;
	margin: 60px 0 0 10px;
}

.tangle li {
	float: left;
	list-style: none;
}

.leftbottom {
	margin-top: 25px;
	height: 105px;
	width: 250px;
	float: left;
}

.leftbottom li {
	height: 100px;
	float: left;
	list-style: none;
}

.leftbottom span {
	color: #2C3078;
	font-size: 18px;
	font-weight: bold;
}

.right {
	margin-right: 10px;;
	width: 505px;
	float: right;
}

.ask1 {
	float: right;
	margin-bottom: 5px;
	color: #2C3078;
}

.ask2 {
	float: right;
	margin-bottom: 5px;
	color: #2C3078;
	font-size: 22px;
	height: 30px;
}

.ask2 li {
	float: left;
	list-style: none;
}

.intro {
	margin-left: 317px;
	color: #2C3078;
	margin-top: 150px;
}

.intro li {
	margin-top: 10px;
	list-style: none;
	color: #2C3078;
	font-size: 20px;
	font-weight: bold;
}

.footer {
	margin: 10px 170px 75px 170px;
	background: #FF9000;
	height: 95px
}

.bg1 {
	background: white;
	height: 40px;
}

.fourkuang {
	width: 100%;
	margin: 0 95px;
}

.fourkuang li {
	height: 95px;
	font-size: 12px;
	background: #FFFFC8;
	list-style: none;
	float: left;
	border: 3px solid #0003C6;
	margin-left: 20px;
	text-align: center;
	color: #0003C6;
	padding: 45px 15px 0 15px;
}
</style>
	</head>
	<body>
		<div id="all" style="width: 1200px; margin: 0 auto">
			<div name="header" style="width: 100%; height: 157px;">
				<div name="logo"
					style="height: 156px; width: 100%; background: white;">
					<img src="./images/logo.png" style="padding-left: 100px">
					<div class="logoright">
						<div class="search">
							<b>管理员${loginuser.mngid}登陆</b>
								<a class="anavi" href="/lyqcssh/login.do?flag=logout">&nbsp;&nbsp;注销 </a>
						</div>
					</div>
				</div>
				<div class="nav">
					<div class="navlist">
						<li>
							<a href="#" style="color: #FFAB39;"><b>汽车调度</b> </a>
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
							<a href="mmain.do?flag=mmainok" style="color: #FFAB39;"><b>人事管理</b>
							</a>
						</li>
						<li>
							<a href="#" style="color: #FFAB39;"><b>公司简介</b> </a>
						</li>
					</div>
				</div>
			</div>
			<div class="main ">
				<div class="wrap">
					<div class="left">
						<div class="lefttop">
							<div class="leftleft">
								<img src="./images/ljs.jpg" />
								<div class="tangle">
									<li
										style="margin-top: 5px; width: 0; height: 0; border: 10px solid; border-color: #F1ECCA #2C3078 #F1ECCA #F1ECCA;"></li>
									<li
										style="margin: 5px 0 0 5px; width: 0; height: 0;; border: 10px solid; border-color: #F1ECCA #F1ECCA #F1ECCA #2C3078;"></li>
								</div>
							</div>
							<div class="lefttop1">
								<li>
									现在可以公布的消息
								</li>
							</div>
							<div class="lefttop2">
								<li style="font-size: 16px; color: #FF9000">
									<b>0.9折</b>
								</li>
								<li>
									<b>E.L.F</b>
								</li>
								<br />
								<li>
									vs.
								</li>
								<li style="font-size: 16px; color: #FF9000">
									<b>0.87折</b>
								</li>
								<li>
									<b>Boice</b>
								</li>
								<li>
									<a href="#"><span id="id" onclick=javascript:
										addreagent();;
	font - size:;
10px;>LJS</span> </a>
								</li>
							</div>
							<div class="leftbottom">
								<span>SANG LA HEI YO</span>
								<br />
								<span>正信大人一生推</span>
								<br />
								<span>李正信最帅了</span>
								<br />
								<span>以上是打折咒语哈哈哈</span>
							</div>
						</div>
					</div>
					<div class="right">
						<div class="ask1">
							<strong>你还想知道神马?</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<input type="text"
							style="width: 100%; height: 45px; border: 5px solid #FFA120;">
						<br />
						<div class="ask2">
							<strong>关键字搜索</strong>
							<img src="./images/find.png" />
							</li>
						</div>
						<img src="./images/maincar.jpg"
							style="float: left; width: 270px; height: 270px; margin-top: 10px" />
						<div class="intro">
							我们的车辆
							<br>
							<li>
								汽车，大客，SUV，吉普车
							</li>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="bg1">
					<div class="fourkuang">
						<li>
							<strong>友情链接</strong>
						</li>
						<li>
							<strong>正信大人 <br> ins </strong>
						</li>
						<li>
							<strong>正信大人 <br> 微博 </strong>
						</li>
						<li>
							<strong>联系我们</strong>
							<br>

							(#%……#￥……#……%￥&￥……￥)
						</li>
					</div>
				</div>
				<dd>
					Copyright &copy; 2015 All Rights Reserved
					<br />
					李正信-a-holic
				</dd>
			</div>
		</div>
	</body>
</html>