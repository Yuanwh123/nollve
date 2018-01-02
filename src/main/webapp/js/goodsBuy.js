var orderId = GetQueryString("orderId");
			var priceTotal,sendTo,guestName;
			var userId=0;
			var COOKIE_NAME = 'sys_em_username';
			var cookieName = $.cookie(COOKIE_NAME);
			function getUserId(){
				var data={};
				data.account=cookieName;
				$.ajax({
					url: url+"login/passport/GetUserId.do",
	            	data: data,
	                dataType: "json",
	                async:false,
	                success:function(res){
	                	if(res.code ==200){
	                		userId=res.data;
	                	}
	                },
	                error:function(){}
				});
			}
			$(function(){
				getUserId();
				addrList();
				var data ={};
				data.orderId = orderId;
				$.ajax({
					url: url+"goods/goodsOrderSure.do",
	            	data: data,
	                dataType: "json",
	                async:false,
	                success:function(res){
	                	orderSure(res);
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				})
				orderSubmit();
			})
			function orderSubmit(){
				$(".sendButton").click(function(){
					alert($(".guestName").html());
				});
			}
			//收货地址
			function addrList(){
				var data={};
				data.userId =userId;
				$.ajax({
					url:url+"goods/goodsAddr.do",
	            	data:data,
	                dataType:"json",
	                async:false,
	                success:function(res){
	                	addrSure(res);
	                	clickAddr();
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				})
				
			}
			
			function clickAddr(){
				$(".dw-list").click(function(e){
					//当点击移除兄弟first-add的元素
					$(this).siblings('.first-add').find('.revise').remove()
					$(this).siblings('.first-add').find('p').remove()
					$(this).siblings('.first-add').find('div').remove()

				if(!$(this).hasClass('first-add') && !$(this).hasClass('add-address')){
					
					$(this).append('<p class="mrdz">默认地址</p >')
					$(this).append('<div class="corner"><img src="../img/triangle.png"></div>')
					$(".guestName").html($(this).find(".detaAddrName").html()+$(this).find(".detaAddrTel").html());
					$(".sendTo").html( $(this).find(".detaAddress").html());
				}
		        //自己添加这个类
				$(this).addClass('first-add').siblings('.dw-list').removeClass('first-add');

		        /****************点击保存按钮的时候***********/
		        $('#reSave').on('click',function(){
					$('.reviseFix').css('display','none');


				})
				/***********点击修改按钮的时候****************/
				$('.revise').on('click',function(){
					alert("此功能作废");
					/*$('.reviseFix').css('display','block');
					var userName=$(this).siblings('h4').children('i').text();
					
					var userPhone=$(this).siblings('h3').children('span').text();
					var detaAddress=$('.detaAddress').text();
					$('#reName').val(userName);
					$('#reDeInfo').val(detaAddress);
					$('#reNum').val(userPhone);*/
				})
				/********点击差之后隐藏**********/
					$('.cha').click(function(){
						$('.reviseFix').css('display','none');
					})
				});
			}
			function addrSure(res){
				var html="";
				for(var i=0;i<res.data.length;i++){
					if(res.data[i].sendaddrDefaultstatus==1){
						html+='<div class="dw-list first-add">';
						html+='<h4>广东<span>广州</span>&nbsp;&nbsp;&nbsp;&nbsp;(<i class="detaAddrName">'+res.data[i].sendaddrName+'</i>)收</h4>';
						html+='<h3>电话号码:<span class="detaAddrTel">'+res.data[i].sendaddrTel+'</span></h3>';
						html+='<h4 class="detaAddress">'+res.data[i].sendaddrAddr+'</h4>';
						
						html+=' <p class="mrdz">默认地址</p >';
					    html+='<div class="corner"><img src="../img/triangle.png"></div> </div>';
					}else{
						html+='<div class="dw-list">';
						html+='<h4>广东<span>广州</span>&nbsp;&nbsp;&nbsp;&nbsp;(<i class="detaAddrName">'+res.data[i].sendaddrName+'</i>)收</h4>';
						html+='<h3 >电话号码:<span class="detaAddrTel">'+res.data[i].sendaddrTel+'</span></h3>';
						html+='<h4 class="detaAddress">'+res.data[i].sendaddrAddr+'</h4></div>';
					}
				}
				html+='<div class="dw-list add-address"> <a  href="../second/accountSet"><img src=../img/plus.png></a></div>';
				
				$(html).appendTo(".add-text");
			}
			function orderSure(res){
				var html="";
				for(var i=0;i<res.data.length;i++){
					var price = res.data[i].orderPrice/res.data[i].orderGoodsNum;
					html+='<tr class="tab_secRow">';
					html+='<td class="clearfix">';
					html+='<div class="g_boxLeft fl">';
					html+='<img src="'+res.data[i].orderPic+'"/>';
					html+='</div>';
					html+='<p class="goods_des fl">日本进口'+res.data[i].orderGoodsInf+'</p>';
					html+='</td>';
					html+='<td>商品属性：'+res.data[i].orderSpec+'ml洗发水</td>';
					html+='<td class="row_goodsOnePrice">'+price+'</td>';
					html+='<td><span class="num_reduce">-</span><span class="goodsNum">'+res.data[i].orderGoodsNum+'</span><span class="num_add">+</span>';
					html+='</td>';
					html+='<td class="row_total">'+res.data[i].orderPrice+'</td></tr>';
				}
				
				$(html).appendTo(".confirmInfo");
			}