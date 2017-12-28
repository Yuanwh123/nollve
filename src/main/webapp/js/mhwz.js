window.onload = function(){
	$(function(){

//判断登陆
			var COOKIE_NAME = 'sys_em_username';
			var cookieName = $.cookie(COOKIE_NAME);
			if(cookieName!=null){
			 	$(".land1").css("display","none");
			 	$(".land2").css("display","block");
			 	$(".land2 .userN").text(cookieName);
			 }
			$(".quit").click(function(){
				cookieName=null;
				$(".land1").css("display","block");
			 	$(".land2").css("display","none");
			})
			
//主页
		if($(".h3_c").length==1 || $(".eb_pic").length==1 || $(".course").length==1){
			$(window).resize(function(){
			window.location.reload();
			})
		}
		$(".contactUs").click(function(){
			$(".phoneUs").css("display","block");
			$(".phoneUs").css({
				top:50+"%",left:50+"%",marginLeft:-150,marginTop:-65
			})
			$(".bg_div").css("display","block")
		})
		$(".bg_div").click(function(){
			$(".phoneUs").css("display","none");
			$(".bg_div").css("display","none")
		})
		var winW =parseInt(document.body.offsetWidth) ;
		$(".cont").css("width",winW);
		$(".inn img").css("width",winW);
		$(".inn a").css("width",winW);
		$(".innerwrap").css("width",winW);
//官网首页
		$(".container2").css("width",winW);
		$(".inner2 img").css("width",winW);
		$(".inner2 a").css("width",winW);
		$(".innerwrapper2").css("width",winW);

		$(".container").css("width",winW);
		$(".inner img").css("width",winW);
		$(".inner a").css("width",winW);
		$(".innerwrapper").css("width",winW);
		var flag4=true;
		var timer4=null;
		var index4=0;
		var width4=$(".inn img").eq(0).width();
		autoGo4(flag4);
		function autoGo4(start){
			if(start){
				timer4=setInterval(function(){
					index4++;
					index4%=$(".pagi span").length;
					picture4(index4);
			},2500)
			}
		}
		function picture4(num){
			if(num ==0){
				$(".inn").css("left","0");
				$(".pagi span").eq(0).addClass("lb_act").siblings().removeClass("lb_act");
			}else{
					$(".pagi span").eq(num).addClass("lb_act").siblings().removeClass("lb_act");
					$(".inn").animate({left:-num*width4},300);
				}
		}
		$(".cont").hover(function(){
			clearInterval(timer4);
		},function(){
			autoGo4(flag4);
		})
		$(".pagi span").click(function(){
			index4=$(this).index();
			picture4(index4);
		})
	//官网首页
		var flag=true;
		var timer=null;
		var index=0;
		var width=$(".inner img").eq(0).width();
		autoGo(flag);
		function autoGo(start){
			if(start){
				timer=setInterval(function(){
					index++;
					index%=$(".pagination span").length;
					picture(index);
			},2000)
			}
		}
		function picture(num){
			if(num ==0){
				$(".inner").css("left","0");
				$(".pagination span").eq(0).addClass("lb_active").siblings().removeClass("lb_active");
			}else{
					$(".pagination span").eq(num).addClass("lb_active").siblings().removeClass("lb_active");
					$(".inner").animate({left:-num*width},300);
				}
		}
		$(".container").hover(function(){
			clearInterval(timer);
		},function(){
			autoGo(flag);
		})
		$(".pagination span").click(function(){
			index=$(this).index();
			picture(index);
		})
//轮播2
		var flag2=true;
		var timer2=null;
		var index2=0;
		var width2=$(".inner2 img").eq(0).width();
		autoGo2(flag2);
		function autoGo2(start){
			if(start){
				timer2=setInterval(function(){
					index2++;
					index2%=$(".pagination2 span").length;
					picture2(index2);
			},2500)
			}
		}
		function picture2(num){
			if(num ==0){
				$(".inner2").css("left","0");
				$(".pagination2 span").eq(0).addClass("lb_active2").siblings().removeClass("lb_active2");
			}else{
					$(".pagination2 span").eq(num).addClass("lb_active2").siblings().removeClass("lb_active2");
					$(".inner2").animate({left:-num*width2},300);
				}
		}
		$(".container2").hover(function(){
			clearInterval(timer2);
		},function(){
			autoGo2(flag2);
		})
		$(".pagination2 span").click(function(){
			index2=$(this).index();
			picture2(index2);
		})
	//轮播三	
		var imgH=$(".inner3 img").eq(0).height();
		$(".inner3").css("height",imgH);
		var flag3=true;
		var timer3=null;
		var index3=0;
		var height=$(".inner3 img").eq(0).height();
		autoGo3(flag3);
		function autoGo3(start){
			if(start){
				timer3=setInterval(function(){
					index3++;
					index3%=$(".pagination3 span").length;
					picture3(index3);
			},1000)
			}
		}
		function picture3(num){
			if(num ==0){
				$(".inner3").css("top","0");
				$(".pagination3 span").eq(0).addClass("lb_active3").siblings().removeClass("lb_active3");
			}else{
					$(".pagination3 span").eq(num).addClass("lb_active3").siblings().removeClass("lb_active3");
					$(".inner3").animate({top:-num*height},300);
				}
		}
		$(".container3").hover(function(){
			clearInterval(timer3);
		},function(){
			autoGo3(flag3);
		})
		$(".pagination3 span").click(function(){
			index3=$(this).index();
			picture3(index3);
		})
//网上商城
		var imgH=$(".inner5 img").eq(0).height();
		$(".inner5").css("height",imgH);
		var flag5=true;
		var timer5=null;
		var index5=0;
		var height5=$(".inner5 img").eq(0).height();
		autoGo5(flag5);
		function autoGo5(start){
			if(start){
				timer5=setInterval(function(){
					index5++;
					index5%=$(".pagination5 span").length;
					picture5(index5);
			},1000)
			}
		}
		function picture5(num){
			if(num ==0){
				$(".inner5").css("top","0");
				$(".pagination5 span").eq(0).addClass("lb_active5").siblings().removeClass("lb_active5");
			}else{
					$(".pagination5 span").eq(num).addClass("lb_active5").siblings().removeClass("lb_active5");
					$(".inner5").animate({top:-num*height5},300);
				}
		}
		
		$(".container5").hover(function(){
			clearInterval(timer5);
		},function(){
			autoGo5(flag5);
		})
		
		$(".pagination5 span").click(function(){
			index5=$(this).index();
			picture5(index5);
		})
	//新闻中心页面
	var innerHeight=$('.innerBox').height()/2;
	$(".newsLeftArrow").css({top:innerHeight,marginTop:-13+'px'});
	$(".newsRightArrow").css({top:innerHeight,marginTop:-13+'px'});
	$(window).resize(function(){
		var innerHeight=$('.innerBox').height()/2;
		$(".newsLeftArrow").css({top:innerHeight,marginTop:-13+'px'});
		$(".newsRightArrow").css({top:innerHeight,marginTop:-13+'px'});
	})
	$(".newsLeftArrow").click(function(){
		if(parseInt($(".innerBox").css("left")) >=0){
			$(".innerBox").css("left","0");
		}else{
			$(".innerBox").animate({left:parseInt($(".innerBox").css("left"))+parseInt($(".picture_box").width())},300);
		}
	})
	$(".newsRightArrow").click(function(){
		if(parseInt($(".innerBox").css("left")) <= -parseInt($(".picture_box").width())){
			$(".innerBox").css("left","-parseInt($('.picture_box').width())");
		}else{
			$(".innerBox").animate({left:parseInt($(".innerBox").css("left"))-parseInt($(".picture_box").width())},300);
		}
	})
	
	
	var innerHeight2=$('.innerSucess').height()/2;
	$(".newsLeftArrow2").css({top:innerHeight2,marginTop:-13+'px'});
	$(".newsRightArrow2").css({top:innerHeight2,marginTop:-13+'px'});
	$(window).resize(function(){
		var innerHeight2=$('.innerSucess').height()/2;
		$(".newsLeftArrow2").css({top:innerHeight2,marginTop:-13+'px'});
		$(".newsRightArrow2").css({top:innerHeight2,marginTop:-13+'px'});
	})
	
	$(".newsLeftArrow2").click(function(){
		if(parseInt($(".innerSucess").css("left")) >=0){
			$(".innerSucess").css("left","0");
		}else{
			$(".innerSucess").animate({left:parseInt($(".innerSucess").css("left"))+parseInt($('.success_box').width())},300);
		}
	})
	$(".newsRightArrow2").click(function(){
		if(parseInt($(".innerSucess").css("left")) <= -parseInt($('.success_box').width())){
			$(".innerSucess").css("left","-parseInt($('.success_box').width())");
		}else{
			$(".innerSucess").animate({left:parseInt($(".innerSucess").css("left"))-parseInt($('.success_box').width())},300);
		}
	})
//	$(".success_text").width($(".success_text").parents(".innerSucess_box").width())
//提交订单
	get_total();
	function get_total(){
		var shopCar_totalPrice=0;
		for(var i=0;i<$(".tab_secRow").length;i++){
			shopCar_totalPrice+=parseInt($(".tab_secRow").eq(i).find(".row_total").text());
		}
		shopCar_totalPrice+=parseInt($(".tax_price").text())+parseInt($(".post_price").text());
		$(".tot_price").text(shopCar_totalPrice.toFixed(2));
		$(".send_totalPrice").text($(".tot_price").text());
	}
	$(".confirmInfo .num_add").click(function(){
		$(this).siblings(".goodsNum").text(parseInt($(this).siblings(".goodsNum").text())+1)
		var shopCar_price=parseInt($(this).parents(".tab_secRow").find(".row_goodsOnePrice").text())*parseInt($(this).siblings(".goodsNum").text())
		$(this).parents(".tab_secRow").find(".row_total").text(shopCar_price.toFixed(2));
		get_total();
//		var totalPrice=parseInt($(".row_total").text())+parseInt($(".tax_price").text())+parseInt($(".post_price").text())
//		$(".tot_price").text(totalPrice.toFixed(2));
//		$(".send_totalPrice").text($(".tot_price").text());
	})
	$(".confirmInfo .num_reduce").click(function(){
		if($(this).siblings(".goodsNum").text() == 1){
			$(this).disabled;
		}else{
			$(this).siblings(".goodsNum").text(parseInt($(this).siblings(".goodsNum").text())-1)
			var shopCar_price=parseInt($(this).parents(".tab_secRow").find(".row_goodsOnePrice").text())*parseInt($(this).siblings(".goodsNum").text())
			$(this).parents(".tab_secRow").find(".row_total").text(shopCar_price.toFixed(2));
			get_total();
		}
	})
//商品结算页	
	getTotal();
	function getTotal(){
		var selected=0;
		var acc_price=0;
		var checkedNum=0;
		for(var i=0;i<$(".account_table input").length;i++){
			if($(".account_table input").eq(i).prop("checked")){
				checkedNum++;
				selected+=parseInt($(".account_table input").eq(i).parents("tr").find(".acc_goodsNum").text());
				acc_price+=parseInt($(".account_table input").eq(i).parents("tr").find(".acc_row_total").text());
				$(".checkedGoods").text(selected);
				$(".checkedPrice").text(acc_price.toFixed(2));
			}
			if($(".account_table input").eq(i).prop("checked")==false){
				$("#checkA1").prop("checked","");
				$("#checkA3").prop("checked","");
			}
		if(checkedNum==0){
			$(".checkedGoods").text("0");
				$(".checkedPrice").text("0");
		}
		if(checkedNum==$(".account_table input").length){
			$("#checkA1").prop("checked","checked");
			$("#checkA3").prop("checked","checked");
		}
		}
	}
	$(".account_table input").on("click",function(){
		getTotal();
	})
//增加减少数量
	$(".acc_num_add").on("click",function(){
		$(this).siblings(".acc_goodsNum").text(parseInt($(this).siblings(".acc_goodsNum").text())+1);
		var pri=parseInt($(this).siblings(".acc_goodsNum").text()) ;
		$(this).parents("tr").find(".acc_row_total").text((parseInt(pri)*parseInt($(this).parents("tr").find(".acc_row_goodsOnePrice").text())).toFixed(2))
		if($(this).parents("tr").find("input").prop("checked")){
			getTotal();
		}
	})
	$(".acc_num_reduce").on("click",function(){
		if(parseInt($(this).siblings(".acc_goodsNum").text())==1){
			$(".acc_num_reduce").disabled;
		}else{
			$(this).siblings(".acc_goodsNum").text(parseInt($(this).siblings(".acc_goodsNum").text())-1);
			var pri=parseInt($(this).siblings(".acc_goodsNum").text()) ;
			$(this).parents("tr").find(".acc_row_total").text((parseInt(pri)*parseInt($(this).parents("tr").find(".acc_row_goodsOnePrice").text())).toFixed(2))
			if($(this).parents("tr").find("input").prop("checked")){
				getTotal();
			}
		}
		
	})
//全选
	$("#checkA1").click(function(){
		if($("#checkA1").prop("checked")){
			$(".account_table input").prop("checked","checked");
			$("#checkA3").prop("checked","checked");
			getTotal();
		}else{
			$(".account_table input").prop("checked","");
			$("#checkA3").prop("checked","");
			getTotal();
		}
	})
	$("#checkA3").click(function(){
		if($("#checkA3").prop("checked")){
			$(".account_table input").prop("checked","checked");
			$("#checkA1").prop("checked","checked");
			getTotal();
		}else{
			$(".account_table input").prop("checked","");
			$("#checkA1").prop("checked","");
			getTotal();
		}
	})
	/*********************点击显示与收起的操作********立即购买****************/
        $('.disAllAdd').on('click',function(){
            $('.add-text').addClass('dis-ove')
            $(this).addClass('active-disAllAdd')
            $('.disAllAdd1').addClass('active-disAllAdd1')
        })
        $('.disAllAdd1').on('click',function(){
            $('.add-text').removeClass('dis-ove')
            $('.disAllAdd').removeClass('active-disAllAdd')
            $(this).removeClass('active-disAllAdd1')
        })
        /*********************点击添加按钮填写收货地址************************/
        $('.add-address').click(function(){

        })
	//我的 页面
	$("#toPay").text($(".waitComment .toPay").length);//待付款
	$("#toSend").text($(".waitComment .toSendGoods").length);//待发货
	$("#toGet").text($("#mine_logistics .logistics_item").length);//待收货
	$("#toEva").text($(".waitComment .toCom").length);//待评价
	$(".confirm_fetchG").click(function(){
		if(confirm("确认您已查收了吗？")){
			$(this).parents(".logistics_item").remove();
			$("#toGet").text($("#mine_logistics .logistics_item").length);
			$("#toEva").text(parseInt($("#toEva").text())+1);
		};
	})
	$(".allOrder_confirm").click(function(){
		if(confirm("确认您已查收了吗？")){
			$(this).parents(".toGetGoods").remove();
			$("#toGet").text($("#waitComment .toGetGoods").length);
			$("#toEva").text(parseInt($("#toEva").text())+1);
		};
	})
	//评论跳转页的上传
	$("#fileCom").change(function(){
		var fileCom=document.getElementById("fileCom");
		if(fileCom.files.length>5){
			$("#fileCom").val("");
			alert("最多只能选择五张图片，请重新选择")
		}else{
			$("#picNums").text(fileCom.files.length);
		}
	})
    $("#file_upload2").change(function () {//退货-上传图片限制
    	var file_upload=document.getElementById("file_upload2");
    	$("#preview").html("");
    	if(file_upload.files.length>5){
    		alert("最多只能选择五张图片，请重新选择");
    		$("#file_upload").val("");
    	}else{
    		var fil = this.files;
	        for (var i = 0; i < fil.length; i++) {
	            reads(fil[i]);
	        	}
    	}
	   });
    $("#file_upload").change(function () {//退货-上传图片限制
    	var file_upload=document.getElementById("file_upload");
    	$("#preview").html("");
    	if(file_upload.files.length>5){
    		alert("最多只能选择五张图片，请重新选择");
    		$("#file_upload").val("");
    	}else{
    		var fil = this.files;
	        for (var i = 0; i < fil.length; i++) {
	            reads(fil[i]);
	        	}
    	}
	   });
	function reads(fil){
	    var reader = new FileReader();
	    reader.readAsDataURL(fil);
	    reader.onload = function()
	    {
	        document.getElementById("preview").innerHTML += "<img src='"+reader.result+"'>";
	    };
	  }
	//我的页面待付款点击功能
	$(".myOrder").click(function(){
		window.location.href="我的+1.html1";
	})
	$("#to_pay").click(function(){
		$(".mine_main2").css("display","block").siblings().hide();
		$(".toPay").show();
		$(".toSendGoods").hide();
		$(".toGetGoods").hide();
		$(".toCom").hide();
		$("#bar_toPay").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	$("#to_send").click(function(){
		$(".mine_main2").css("display","block").siblings().hide();
		$(".toSendGoods").show();
		$(".toPay").hide();
		$(".toGetGoods").hide();
		$(".toCom").hide();
		$("#bar_toSend").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	$("#to_get").click(function(){
		$(".mine_main2").css("display","block").siblings().hide();
		$(".toGetGoods").show();
		$(".toPay").hide();
		$(".toSendGoods").hide();
		$(".toCom").hide();
		$("#bar_toget").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	$("#to_com").click(function(){
		$(".mine_main2").css("display","block").siblings().hide();
		$(".toCom").show();
		$(".toPay").hide();
		$(".toSendGoods").hide();
		$(".toGetGoods").hide();
		$("#bar_toCom").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	//我的2页面
	$("#comTa1").focus();//评论跳转后第一个文本框获得焦点
	$("#bar_toPay").click(function(){
		$(".toPay").show();
		$(".toSendGoods").hide();
		$(".toGetGoods").hide();
		$(".toCom").hide();
		$("#bar_toPay").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	$("#bar_toSend").click(function(){
		$(".toSendGoods").show();
		$(".toPay").hide();
		$(".toGetGoods").hide();
		$(".toCom").hide();
		$("#bar_toSend").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	$("#bar_toget").click(function(){
		$(".toGetGoods").show();
		$(".toPay").hide();
		$(".toSendGoods").hide();
		$(".toCom").hide();
		$("#bar_toget").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	$("#bar_toCom").click(function(){
		$(".toCom").show();
		$(".toPay").hide();
		$(".toGetGoods").hide();
		$(".toSendGoods").hide();
		$("#bar_toCom").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	$("#bar_allOrder").click(function(){
		$(".toSendGoods").show();
		$(".toPay").show();
		$(".toGetGoods").show();
		$(".toCom").show();
		$("#bar_allOrder").addClass("main_liActive").siblings().removeClass("main_liActive");
	})
	//物品详情评论页
	$(".comPic_item").hover(function(){
		$(this).parents(".star_and_time").find(".hideBox").css("display","block");
		$(this).find(".big_border").css("display","block");
		$(this).find("img").eq(0).clone().appendTo($(this).parents(".star_and_time").find(".hideBox"));
	},function(){
		$(this).parents(".star_and_time").find(".hideBox").empty();
		$(this).parents(".star_and_time").find(".hideBox").css("display","none");
		$(this).find(".big_border").css("display","none");
	})
	 var dian = 0;
     $(".dcBar li").click(function(){
         dian = $(".dcBar li").index($(this));
         $(this).addClass("dcBarActive").siblings(".dcBar li").removeClass("dcBarActive");
         $(".dbPanel").eq(dian).fadeIn().siblings(".dbPanel").fadeOut();
         })
            /***************规格*************/
        $('.dc-list3 > i').on('click',function(){
             $(this).addClass('dl3Active').siblings('.dc-list3 > i').removeClass('dl3Active')
        })
    /***************规格*************/
         $('.dc-list3 > i').on('click',function(){
             $(this).addClass('dl3Active').siblings('.dc-list3 > i').removeClass('dl3Active')
         });
        /*************图片放大页面***************/
		  var ind=0;
		         $('.dcWrapPic >ul> li').on('click', function () {
		   $('.disActive').remove();
		   ind = $('.dcWrapPic >ul> li').index($(this));
		   $(".hid").eq(ind).show().siblings(".dcWrapPic > div > img").hide();
		});
		 /****************点击加入购物车的时候******************/
		$('.AddToCart').click(function(){
		   $('.shopCount').text(parseInt($('.shopCount').text())+1);
		});
        //地址插件
        $("#city").click(function (e) {
			SelCity(this,e);
		    console.log("inout",$(this).val(),new Date())
		});
		//个人账户设置插件---年月日
//  	new YMDselect('year1','month1','day1',2010,3,20);    
		//。。。
//		$("#distpicker").distpicker();
		//个人账户设置JS
		var emailNum =$ ('.emailNum').text();
		var phoneNum =$ ('.phoneNum').text();
		 
//		var perRealName=$("#perRealName").text();//真实姓名
		var reg = new RegExp("(\\d{3})(\\d{4})(\\d{4})");//
//		var regg=new RegExp("([\\u4e00-\\u9fa5]{1})([\\u4e00-\\u9fa5]{1,})")
		
		var tel = emailNum.replace(reg, "$1****$3");
		var tel2 = phoneNum.replace(reg, "$1****$3");
//		var realname=perRealName.replace(regg,"$1**");
//		$("#perRealName").text(realname);
		$ ('.emailNum').text(tel);
		$ ('.phoneNum').text(tel2);
		 var adindex=0;
        $('.liPanel > li').on('click',function(){
            adindex = $(".liPanel li").index($(this));
            $('.adPanelContent>div').eq(adindex).show().siblings('.adPList').hide();
        })
        //个人账户设置--点击删除按钮
		$('.del').click(function(){
		   if(confirm('您确定要删除这条地址吗？')){
		      $(this).parents('tr').remove();
		   }
		})
        //买家申请退货表单
        $("#retSubmit").on("click",function(){
        	var whatGoods=$(".return_goods p").text();
        	var goodsType=$(".return_goods i").text();
        	var returnType=$('input:radio[name="reMon"]:checked').val();
        	var returnMoney=$("#retMoney").val();
        	var ret_explain=$("#retExplain").val();
        	var uploadPic = $('#file_upload').get(0).files;
//      	alert(whatGoods+11+goodsType+11+returnType+11+returnMoney+ret_explain+uploadPic);
			$.ajax({
				type:"get",
				url:"",
				dataType:"josn",
			});
        })
        
        
        
	})
}
