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
				Over();
			})
			function Sure(){
				$(".confirm_fetchG").click(function(){
					if(confirm("确认您已查收了吗？")){
						var orderId =$(this).parents('div').children('div').eq(0).html();
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
			                error:function(){}
						});
					};
				})
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
			                error:function(){}
						});
					}
				})
			}
			function Datas(res){
				var html="";
				var value="";
				for(var i=0;i<res.data.length;i++){
					if(res.data[i].orderStatus==6){
						html+='<div class="logistics_item clearfix">';
						html+='<div style="display:none;" class="">'+res.data[i].orderId+'</div>';
						html+='<div class="logistics_imgBox fl">';
						html+='	<img src="'+res.data[i].orderPic+'"/>';
						html+='</div>';
						html+='<div class="logistics_detail fl">';
						html+='	<p>在浙江义乌分拨中心进行装车扫描，即将发往：广东佛山分拨中心</p>';
						html+='	<p>2017-12-12 16:42:08  <a href="我的物流.html">查看物流明显</a></p>';
						html+='</div>';
						html+='<div class="confirm_fetchG fr">确认收货</div>';
						html+='</div>';
					}
					if(res.data[i].orderStatus>4){
						value+='<div class="logistics_item clearfix" id="owned_item">';
						value+='<div style="display:none;">'+res.data[i].orderId+'</div>';
						value+='<div class="logistics_imgBox fl">';
						value+='<img src="'+res.data[i].orderPic+'"/>';
						value+='</div>';
						value+='<div class="owned_detail fl">';
						value+='	<p>'+res.data[i].orderGoodsInf+'</p>';
						value+='</div>';
						value+='<div class="owned_condition fr">已付款</div>';
						value+='<div class="owned_price fr">'+res.data[i].orderPrice+'</div>';
						value+='<div class="owned_num fr">'+res.data[i].orderGoodsNum+'</div>';
						value+='<span class="fl">'+formatDateTime(res.data[i].orderDate)+'<i >订单号：113180003214562</i></span>';
						value+='</div>';
					}
				}
				$(html).appendTo("#mine_logistics");
				$(value).appendTo("#mine_logistics_owned");
			}
			/*转换时间*/
			function formatDateTime(inputTime) {    
				    var date = new Date(inputTime);  
				    var y = date.getFullYear();    
				    var m = date.getMonth() + 1;    
				    m = m < 10 ? ('0' + m) : m;    
				    var d = date.getDate();    
				    d = d < 10 ? ('0' + d) : d;    
				    var h = date.getHours();  
				    h = h < 10 ? ('0' + h) : h;  
				    var minute = date.getMinutes();  
				    var second = date.getSeconds();  
				    minute = minute < 10 ? ('0' + minute) : minute;    
				    second = second < 10 ? ('0' + second) : second;   
				    return y + '-' + m + '-' + d+' '+h+':'+minute+':'+second;    
				};
			function Over(){
				var data={};
				data.userId =userId;
				$.ajax({
					url: url+"goods/goodsOverOrder.do",
	            	data: data,
	                dataType: "json",
	                async:false,
	                success:function(res){
	                	if(res.code ==200){
	                		//console.log(JSON.stringify(res));
	                		allOrders(res);
	                		Datas(res);
	                		Sure();
	                	}
	                },
	                error:function(){}
				})
			}
			function allOrders(res){
				var ss="";
				for(var i=0;i<res.data.length;i++){
					if(res.data[i].orderStatus<8){
						if(res.data[i].orderStatus==4||res.data[i].orderStatus==2){
							ss+='<tr class="table_goodsInfo toPay">';
						}else if(res.data[i].orderStatus==5){
							ss+='<tr class="table_goodsInfo toSendGoods">';
						}else if(res.data[i].orderStatus==6){
							ss+='<tr class="table_goodsInfo toGetGoods">';
						}else if(res.data[i].orderStatus==7){
							ss+='<tr class="table_goodsInfo toCom">';
						}
						
						ss+='<td class="clearfix">';
						ss+='<div style="display:none;" >'+res.data[i].orderId+'</div>';
						ss+='<div class="com_borBox fl">';
						ss+='	<img src="'+res.data[i].orderPic+'"/>';
						ss+='</div>';
						ss+='	<p class="fl">'+res.data[i].orderGoodsInf+'</p>';
						ss+='</td>';
						ss+='<td>'+res.data[i].orderPrice/res.data[i].orderGoodsNum+'</td>';
						ss+='<td>'+res.data[i].orderGoodsNum+'</td>';
						ss+='<td>'+res.data[i].orderPrice+'</td>';
						if(res.data[i].orderStatus==4||res.data[i].orderStatus==2){
							ss+='<td><p id="toSendGoods_distance">等待商家付款</p></td>';
							ss+='<td><div>待付款</div></td>';
						}else if(res.data[i].orderStatus==5){
							ss+='<td><p id="toSendGoods_distance">等待商家发货</p></td>';
							ss+='<td><div class="confirm_back">退货</div></td>';
						}else if(res.data[i].orderStatus==6){
							ss+='<td><p id="toGet_distant">订单已签收</p></td>';
							ss+='<td><div class="confirm_fetchGStep">确认收货</div></td>';
						}else if(res.data[i].orderStatus==7){
							ss+='<td><p>订单已签收</p><a href="#">查看物流</a></td>';
							ss+='<td><div>评价</div></td>';
						}
						ss+='</tr>';
					}
				}
				$(ss).appendTo("#waitComment");
			}