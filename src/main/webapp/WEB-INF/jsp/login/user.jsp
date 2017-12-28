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
		<script type="text/javascript">
		var COOKIE_NAME = 'sys_em_username';
        var COOKIE_PASSWORD_KEY = 'sys_em_password';
			$(function(){
				var cookieName = $.cookie(COOKIE_NAME);
	            if (cookieName && cookieName != "null") {
	                $("#landUsername").val($.cookie(COOKIE_NAME));
	                $("#landPassword").val($.cookie(COOKIE_PASSWORD_KEY));
	                $("#j_remember").attr('checked', true);
	            } else {
	                $("#landUsername").val("").focus();
	                $("#landPassword").val("");
	            }

	            $(".close").click(function () {
	                $("#loginSuccBox").alert();
	            });
				$("#landLand").click(function () {
		                loginAction();
		                
		        });
			});
			
			 function loginAction() {
				 var issubmit = true;
		         var i_index = 0;
		         $(this).find('.form-control').each(function (i) {
		                if ($.trim($(this).val()).length == 0) {
		                    $(this).css('border', '1px #ff0000 solid');
		                    issubmit = false;
		                    if (i_index == 0)
		                        i_index = i;
		                }
		         });
		         if (!issubmit) {
		                $(this).find('.form-control').eq(i_index).focus();
		                return false;
		        }
		        var isRemember = $("#j_remember").is(":checked");
		        
		        if (!isRemember) {
	                $.cookie(COOKIE_NAME, null);  //删除cookie
	                $.cookie(COOKIE_PASSWORD_KEY, null);  //删除cookie
	            }
		        
		        $("#landLand").attr("disabled", true).val('登陆中..');
		        
		        var data = {};
		        data.account = $("#landUsername").val();
	            data.password = encodePwdString($("#landPassword").val());
	            $.ajax({
	            	url: url+"login/passport/login.do",
	            	data: data,
	                dataType: "json",
	                success: function (res) {
	                	$("#landLand").attr("disabled", false).val('登陆');
	                    if (res.code == 200) {
	                        $('#loginSuccBox').css('display', 'block');

	                        if (isRemember) {
	                            $.cookie(COOKIE_NAME, $("#landUsername").val(), {expires: 15});
	                            $.cookie(COOKIE_PASSWORD_KEY, $("#landPassword").val(), {expires: 15});
	                        }
	                        setTimeout(backToHome(), 1200);
	                    } else {
	                        alert(res.errMsg);
	                    }
	                },
	                error: function () {
	                    alert("网络错误");
	                    $("#landLand").attr("disabled", false).val('登陆');
	                }
	            })
			 }
			 function backToHome() {
				 window.location.href="first/index";
				
		     }
			 /*Enter按钮*/
		        document.onkeydown = function (event) {
		            var e = event || window.event || arguments.callee.caller.arguments[0];
		            if (e && e.keyCode == 13) { // enter 键
		                loginAction();
		            }
		        };
		</script>
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
