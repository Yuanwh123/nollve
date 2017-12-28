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
		<script type="text/javascript">
			$(document).ready(function(){
				$("#findCode").click(function(){
					var data = {};
			        data.mobile = $("#getP_phone").val();
					$.ajax({
						url: url+"login/passport/find.do",
		            	data: data,
		                dataType: "json",
		                success:function(res){
		                	alert(JSON.stringify(res));
		                	alert(res.data);
		                },
		                error: function () {
		                    alert("网络错误");
		                    $("#landLand").attr("disabled", false).val('登陆');
		                }
					});
				});
			});
		</script>
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
						<i id="findCode">获取验证码</i>
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
