var orderId = GetQueryString("orderId");
			$(function(){
				backObtainInf();
			})
			function backObtainInf(){
				var data={};
				data.orderId=orderId;
				$.ajax({
					url: url+"goods/backOrderInf.do",
	            	data: data,
	                dataType: "json",
	                async:false,
	                success:function(res){
	                	if(res.code ==200){
	                		Datas(res);
	                	}
	                },
	                error:function(){alert("网络错误");}
				})
			}
			function Datas(res){
				var html='<div>';
				html+='<div class="bacPic"><img src="'+res.data.orderPic+'"></div><span>'+res.data.orderGoodsInf+'</span>';
				html+='</div>';
				html+='<div>';
				html+='<p>选择服务类型</p>';
				html+='<div class="bac">';
				html+=' <img src="../img/thtk_03.png"><span><a href="step2?orderId='+orderId+'">退货退款</a></span>';
				html+='</div>';
				html+='</div>';
				$(html).appendTo(".BackCon");
			}