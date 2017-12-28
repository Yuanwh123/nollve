<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>商城注册页面</title>
		<link rel="stylesheet" href="css/mhwz.css"/>
		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="js/mhwz.js"></script>
		<script type="text/javascript" src="js/url.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#register").click(function(){
					registAction();
				});
			});
			function registAction(){
				var flag = true;
				if($("#regPhoneN").val()==""){
					alert("请输入手机号");
					flag = false;
				}
				if($("#regPassword").val() !=$("#regPassword2").val() ){
					alert("两次密码不正确");
					flag = false;
				}
				var isObey = $("#obey").is(":checked");
				if(!isObey){
					alert("请读取xxx协议");
					flag = false;
				}
				var data = {};
				data.mobile = $("#regPhoneN").val();
				data.code = $("#regValidate").val();
				data.password =  encodePwdString($("#regPassword").val());
				if(flag){
					$("#register").attr("disabled", true).val('注册中..');
					$.ajax({
						url:url+"login/passport/regist.do",
						data: data,
		                dataType: "json",
		                success:function(res){
		                	console.log(res);
		                	$("#register").attr("disabled", true).val('注册');
		                	if (res.code == 200) {
		                		setTimeout(backToLogin(),1200);
		                	}else{
		                		alert(res.errMsg);
		                	}
		                	flag = false;
		                },
		                error: function () {
		                    alert("网络错误");
		                    $("#register").attr("disabled", false).val('注册');
		                }
					});
				}
			}
			function backToLogin(){
				window.location.href="login";
			}
		</script>
	</head>
	<body>
		<div class="outerDiv">
			<img src="img/landBg.png"/>
			<form action="#" method="post" class="regForm">
				<div class="form_inner">
					<div class="welDiv">
						欢迎注册
					</div>
					<div class="regPhoneN">
						<span></span><input type="text" name="regPhoneN" id="regPhoneN" placeholder="请输入手机号" onfocus="this.placeholder=''" onblur="this.placeholder='请输入手机号'" />
					</div>
					<div class="regPhoneN regValidate">
						<span></span><input type="text" name="regValidate" id="regValidate" placeholder="验证码" onfocus="this.placeholder=''" onblur="this.placeholder='验证码'" />
						<i>获取验证码</i>
					</div>
					<div class="formPass regPass">
						<span></span><input type="password" name="regPassword" id="regPassword" placeholder="请输入密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入密码'" />
					</div>
					<div class="formPass regPass2">
						<span></span><input type="password" name="regPassword2" id="regPassword2" placeholder="请确认密码" onfocus="this.placeholder=''" onblur="this.placeholder='请确认密码'" />
					</div>
				</div>
				<div class="regLand"><a href="login">登录</a></div>
				<div class="landD"><input type="submit" value="注册" name="register" id="register"/></div>
				<div class="landRegis">
					<label for="obey"><input type="checkbox" name="obey" id="obey" value="true" />我同意遵守《xxx协议》</label>
				</div>
			</form>
			
		</div>
	</body>
</html>
