var userId=0;
			var COOKIE_NAME = 'sys_em_username';
			var cookieName = $.cookie(COOKIE_NAME);
			$(function(){
				getUserId();
				PayGoods();
			});
			//已经购买到宝贝
			function PayGoods(){
				var data={};
				data.userId = userId;
				$.ajax({
					url: url+"goods/goodsPayOrder.do",
	            	data: data,
	                dataType: "json",
	                async:false,
	                success:function(res){
	                	if(res.code ==200){
	                		Datas(res);
	                	}
	                },
	                error:function(){}
				})
			}
			function Datas(res){
				var html='';
				for(var i=0;i<res.data.length;i++){
					html+='<div class="logistics_item clearfix" id="owned_item">';
						html+='<div class="logistics_imgBox fl">';
					html+='<img src="'+res.data[i].orderPic+'"/>';
					html+='</div>';
					html+='<div class="owned_detail fl">';
					html+='<p>'+res.data[i].orderGoodsInf+'</p>';
					html+='</div>';
					html+='<div class="owned_condition fr">已付款</div>';
					html+='<div class="owned_price fr">'+res.data[i].orderPrice+'</div>';
					html+='<div class="owned_num fr">'+res.data[i].orderGoodsNum+'</div>';
					html+='<span>'+res.data[i].orderDate+'</span><i>订单号：113180003214562</i>';
					html+='</div>';
				}
				$(html).appendTo("#mine_logistics_owned");
			}
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