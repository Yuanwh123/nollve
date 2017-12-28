<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>重置密码</title>
		<link rel="stylesheet" href="css/mhwz.css" />
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="js/mhwz.js"></script>
	</head>
	<body>
		<div class="outerDiv">
			<img src="img/landBg.png"/>
			<form action="#" method="post" class="resetForm">
				<div class="form_inner">
					<div class="welDiv">
						重置密码
					</div>
					<div class="formPass regPass resetP">
						<span></span><input type="password" name="resetPass" id="resetPass" placeholder="请输入新密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入新密码'" />
					</div>
					<div class="formPass regPass2">
						<span></span><input type="password" name="resetPass2" id="resetPass2" placeholder="请确认新密码" onfocus="this.placeholder=''" onblur="this.placeholder='请确认新密码'" />
					</div>
				</div>
				<div class="regLand"><a href="login">登陆</a></div>
				<div class="landD"><input type="submit" value="确定" name="reset" id="reset"/></div>
			</form>
			
		</div>
	</body>
</html>
