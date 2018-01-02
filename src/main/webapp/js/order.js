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
				showList();
			});
			function showList(){
				var data={};
				data.userId=userId;
				$.ajax({
					url: url+"goods/goodsNoPayOrder.do",
	            	data: data,
	                dataType: "json",
	                async:false, 
	                success:function(res){
	                	if(res.code==200){
	                		console.log(JSON.stringify(res));
	                		allOrders(res);
	                		Sure();
	                	}
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				});
			}
			function Sure(){
				$(".confirm_back").click(function(){
					var orderId = $(this).parents('tr').children('td').eq(0).children('div').html();
					
					window.location.href="../four/step1?orderId="+orderId+"";
					//setTimeout("javascript:location.href='../four/step1?orderId=''"+orderId+"'", 500);
				})
				$(".confirm_fetchGStep").click(function(){
					if(confirm("确认您已查收了吗？")){
						var orderId = $(this).parents('tr').children('td').eq(0).children('div').html();
						var data={};
						data.orderId=orderId;
						$.ajax({
							url: url+"goods/goodsUpdateOrder.do",
			            	data: data,
			                dataType: "json",
			                async:false,
			                success:function(res){
			                	if(res.code == 200){
			                		location.replace(location.href);
			                	}
			                },
			                error:function(){
			                	alert("网络错误");
			                }
						});
					}
				})
			}
			function allOrders(res){
				var html="";
				for(var i=0;i<res.data.length;i++){
					if(res.data[i].orderStatus==4||res.data[i].orderStatus==2){
						html+='<tr class="table_goodsInfo toPay">';
					}else if(res.data[i].orderStatus==5){
						html+='<tr class="table_goodsInfo toSendGoods">';
					}else if(res.data[i].orderStatus==6){
						html+='<tr class="table_goodsInfo toGetGoods">';
					}else if(res.data[i].orderStatus==7){
						html+='<tr class="table_goodsInfo toCom">';
					}
					html+='<td class="clearfix">';
					html+='<div style="display:none;" >'+res.data[i].orderId+'</div>';
					html+='<div class="com_borBox fl">';
					html+='	<img src="'+res.data[i].orderPic+'"/>';
					html+='</div>';
					html+='	<p class="fl">'+res.data[i].orderGoodsInf+'</p>';
					html+='</td>';
					html+='<td>'+res.data[i].orderPrice/res.data[i].orderGoodsNum+'</td>';
					html+='<td>'+res.data[i].orderGoodsNum+'</td>';
					html+='<td>'+res.data[i].orderPrice+'</td>';
					if(res.data[i].orderStatus==4||res.data[i].orderStatus==2){
						html+='<td><p id="toSendGoods_distance">等待商家付款</p></td>';
						html+='<td><div>待付款</div></td>';
					}else if(res.data[i].orderStatus==5){
						html+='<td><p id="toSendGoods_distance">等待商家发货</p></td>';
						html+='<td><div class="confirm_back">退货</div></td>';
					}else if(res.data[i].orderStatus==6){
						html+='<td><p id="toGet_distant">订单已签收</p></td>';
						html+='<td><div class="confirm_fetchGStep">确认收货</div></td>';
					}else if(res.data[i].orderStatus==7){
						html+='<td><p>订单已签收</p><a href="我的物流.html">查看物流</a></td>';
						html+='<td><div>评价</div></td>';
					}
					html+='</tr>';
				}
				$(html).appendTo("#waitComment");
			}