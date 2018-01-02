<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>找回密码</title>
		<link rel="stylesheet" href="css/mhwz.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="js/mhwz.js"></script>
		<script type="text/javascript" src="js/url.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="js/jquery.cookie.js"></script>
		<script type="text/javascript" src="js/landRegisCookie.js"></script>
		
	</head>
	<body>
		<div class="outerDiv">
			<img src="img/landBg.png"/>
			<form action="#" method="post" class="getForm" id="getForm">
				<div class="form_inner">
					<div class="welDiv">
						找回密码
					</div>
					<div class="getP_phone clearfix">
						<input type="text" name="getP_phone" id="getP_phone" placeholder="请输入手机号" onfocus="this.placeholder=''" onblur="this.placeholder='请输入手机号'" />
						<button type="button" id="getValidation">获取验证码</button>
					</div>
					<div class="regPhoneN getP_validate">
						<input type="text" name="getP_validate" id="getP_validate" placeholder="请输入验证码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入验证码'" />
					</div>
				</div>
				<div class="regLand"><a href="login">登陆</a></div>
				<div class="landD"><input type="submit" value="重置密码" name="getPassword" id="getPassword"/></div>
			</form>
			
		</div>
	</body>
</html>
