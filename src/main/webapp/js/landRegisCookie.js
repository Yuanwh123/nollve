window.onload = function(){
	//找回密码-发送验证码
        var codeReturned;
        var scTimer=null;
        $("#getValidation").on("click",function(){
        	var getP_phone=$("#getP_phone").val();
        	var reg=/^1\d{10}$/;
        	if(reg.test(getP_phone)){
        		var num_=60;
		        
		        $(this).attr("disabled",true);
		        $(this).css("cursor","default");
		        $(this).text(num_+"秒内输入");
		        scTimer=setInterval(function(){
	        		num_--;
	        		if(num_>0){
	        			$("#getValidation").text(num_+"秒内输入");
	        		}else{
	        			clearInterval(scTimer);
	        			$("#getValidation").attr("disabled",false);
	        			$("#getValidation").css("cursor","pointer");
	        			$("#getValidation").text("请重新发送");
	        			num_=60;
	        		}
	        	},1000)
		        var data={};
		        data.mobile=$("#getP_phone").val();
		        $.ajax({
		        	type:"post",
		        	url:url+"login/passport/find.do",
		        	data:data,
		        	dataType: "json",
		        	success:function(res){
		        		 if (res.code == 200) {
	                        codeReturned=res.data;
        			}else{
        				alert(res.errMsg);
        			}
		        	}
		        });
        	}else{
        		alert("请输入正确的手机号码");
        	}
        })
        //提交（重置密码）
        $("#getPassword").on("click",function(){
        	var getCode=$("#getP_validate").val();
        	if(getCode==codeReturned){
        		window.location.href="重置密码.html";
        	}else{
        		alert("验证码错误");
        		clearInterval(scTimer);
        		$("#getValidation").attr("disabled",false);
	        	$("#getValidation").css("cursor","pointer");
	        	$("#getValidation").text("请重新发送");
        	}
        })
        
        
        
       
        //重置密码
        $("#reset").on("click",function(){
        	var resetPass=$("#resetPass").val();
        	var resetPass2=$("#resetPass2").val();
        	var reg=/^[A-z0-9]{6,16}$/;
        	if(resetPass !=resetPass2 ){
        		alert("两次输入的密码不一致");
        	}else if(reg.test(resetPass)==false){
        		alert("请输入6~16位字母或数字");
        	}else{
        		var data={};
        		data.mobile=18761666128;
        		data.resetPass=encodePwdString(resetPass);
        		$.ajax({
        			type:"post",
        			url:url+"login/passport/reset.do",
        			data:data,
        			dataType:"json",
        			success:function(res){
        				if(res.code==200){
        					alert("修改密码成功");
        					window.location.href="登陆页面.html";
        				}
        			},
        			error:function(){
        				alert("修改失败");
        			}
        		});
        	}
        })
         // 登陆
        var COOKIE_NAME = 'sys_em_username';
        var COOKIE_PASSWORD_KEY = 'sys_em_password';
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
	            	url:url+"/login/passport/login.do",
	            	data: data,
	                dataType: "json",
	                success: function (res) {
	                	console.log(res);
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
				 window.location.href="index.html";//跳转主页登陆
				
				
		     }
			 /*Enter按钮*/
		        document.onkeydown = function (event) {
		            var e = event || window.event || arguments.callee.caller.arguments[0];
		            if (e && e.keyCode == 13) { // enter 键
		                loginAction();
		            }
		        };
//注册
	//注册手机号验证
    $("#regPhoneN").change(function(){
    	var regPhoneN=$("#regPhoneN").val();
    	var reg=/^1\d{10}$/;
    	if(!reg.test(regPhoneN)){
    		$(".errorDiv .pp1").text("请输入正确的手机号码")
    	}else{
    		$(".errorDiv .pp1").text("")
    	}
    })
    //密码验证
    $("#regPassword").change(function(){
    	var reg1=/^[A-z0-9]{6,16}$/;
   	 	if(!reg1.test($("#regPassword").val())){
    		$(".errorDiv .pp2").text("请输入6-16位字母或数字的密码")
   	 	}else{
   	 		$(".errorDiv .pp2").text("")
   	 	}
   	 	if($(".notFirst").length==1){
	   	 	if($("#regPassword").val() != $(".notFirst").val()){
	    		$(".errorDiv .pp3").text("两次输入的密码不一致")
	    	}else{
	    		$(".errorDiv .pp3").text("")
	    	}
   	 	}
    })
    $("#regPassword2").change(function(){
    	$(this).addClass("notFirst");
    	if($("#regPassword").val() != $("#regPassword2").val()){
    		$(".errorDiv .pp3").text("两次输入的密码不一致")
    	}else{
    		$(".errorDiv .pp3").text("")
    	}
    })
    var regTimer;
    var codeRegister=123456;
     //注册验证码
        $("#regGetCode").on("click",function(){
        	var regPhoneN=$("#regPhoneN").val();
        	var reg=/^1\d{10}$/;
        	if(reg.test(regPhoneN)){
        		var num_=60;
		        $(this).attr("disabled",true);
		        $(this).css("cursor","default");
		        $(this).text(num_+"秒内输入");
		        regTimer=setInterval(function(){
	        		num_--;
	        		if(num_>0){
	        			$("#regGetCode").text(num_+"秒内输入");
	        		}else{
	        			clearInterval(regTimer);
	        			$("#regGetCode").attr("disabled",false);
	        			$("#regGetCode").css("cursor","pointer");
	        			$("#regGetCode").text("请重新发送");
	        			num_=60;
	        		}
	        	},1000)
		        $.ajax({
		        	url:url+"login/passport/regist.do",
					data: data,
		            dataType: "json",
		            success:function(res){
		            	codeRegister=res.code;
		            	alert(1);
		            }
		        	
		        })
        	}else{
        		alert("请输入正确的手机号码");
        	}
        	
        })
        $("#register").click(function(){
        	registAction();
        })
    function registAction(){
    			var reg1=/^[A-z0-9]{6,16}$/;
    			var reg2=/^1\d{10}$/;
    			var isObey = $("#obey").is(":checked");
				if(reg2.test($("#regPhoneN").val())==false){
					alert("请输入正确的手机号");
				}else if(reg1.test($("#regPassword").val()) ==false){
					alert("请输入6-16位数字或字母的密码");
					clearInterval(regTimer);
	        		$("#regGetCode").attr("disabled",false);
		        	$("#regGetCode").css("cursor","pointer");
		        	$("#regGetCode").text("请重新发送");
				}else if($("#regPassword").val() !=$("#regPassword2").val() ){
					alert("两次密码不一致");
					clearInterval(regTimer);
	        		$("#regGetCode").attr("disabled",false);
		        	$("#regGetCode").css("cursor","pointer");
		        	$("#regGetCode").text("请重新发送");
				}else if(!isObey){
					alert("请读取xxx协议");
					clearInterval(regTimer);
	        		$("#regGetCode").attr("disabled",false);
		        	$("#regGetCode").css("cursor","pointer");
		        	$("#regGetCode").text("请重新发送");
				}else if($("#regValidate").val()!=codeRegister){
					alert("验证码错误");
					clearInterval(regTimer);
	        		$("#regGetCode").attr("disabled",false);
		        	$("#regGetCode").css("cursor","pointer");
		        	$("#regGetCode").text("请重新发送");
				}else{
					var data = {};
					data.mobile = $("#regPhoneN").val();
					data.code = $("#regValidate").val();
					data.password =  encodePwdString($("#regPassword").val());
					
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
				window.location.href="登陆页面.html";
			}
        
	
	
	
	
}
