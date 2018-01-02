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
	                            setTimeout(backToHome(), 1200);
	                        }else{
	                        	 window.location.href="firstPages?account="+$("#landUsername").val()+"";
	                        }
	                        
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
				 window.location.href="firstPages";
		     }
			 /*Enter按钮*/
		        document.onkeydown = function (event) {
		            var e = event || window.event || arguments.callee.caller.arguments[0];
		            if (e && e.keyCode == 13) { // enter 键
		                loginAction();
		            }
		        };