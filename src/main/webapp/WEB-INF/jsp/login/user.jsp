<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title>商城登录页面</title>
		<link rel="stylesheet" href="css/mhwz.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="js/mhwz.js"></script>
		<script type="text/javascript" src="js/url.js"></script>
		<script type="text/javascript" src="js/jquery.cookie.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="js/user.js"></script>
	</head>
	<body>
		<div class="outerDiv">
			
			<img src="img/landBg.png"/>
			<form action="#" method="post" class="landForm" id="landForm">
				<div class="form_inner">
					<div class="formAdm">
						<span></span><input type="text" name="landUsername" id="landUsername" value="" />
					</div>
					<div class="formPass">
						<span></span><input type="password" name="landPassword" id="landPassword" value="" />
					</div>
				</div>
				<div class="passDiv clearfix">
					<label for="j_remember" class="m"><input id="j_remember" type="checkbox"
                                                         value="true">记住密码</label>
					<a href="find">忘记密码？</a>
				</div>
				<div class="landD"><input type="submit" value="登陆" name="landLand" id="landLand"/></div>
				<div class="landRegis">
					<a href="regist">没有账号吗？马上注册一个</a>
				</div>
			</form>
			
		</div>
	</body>
</html>
