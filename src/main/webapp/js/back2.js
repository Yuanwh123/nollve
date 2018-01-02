var orderId = GetQueryString("orderId");
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
                		InsertBackInf(res);
                	}
                },
                error:function(){alert("网络错误");}
			})
		}
		function InsertBackInf(res){
				$("#retSubmit").on("click",function(){
					var datas={};
		        	var whatGoods=$(".return_goods p").text();
		        	var goodsType=$(".return_goods h5").text();
		        	var returnType=$('input:radio[name="reMon"]:checked').val();
		        	var backPrice=$("#retMoney").val();
		        	var backDescribe=$("#retExplain").val();
		        	var uploadPic = $('#file_upload').val();
		        	
//		      	alert(whatGoods+11+goodsType+11+returnType+11+returnMoney+ret_explain+uploadPic);
					if(backPrice == ""){
						alert("退款金额不能为空");
					}else if(backDescribe == ""){
						alert("请填写退款说明");
					}else{
						datas.backPrice=backPrice;
						datas.backDescribe=backDescribe;
						datas.backUserId=userId;
						datas.backGoodsSpec=res.data.orderSpec;
						datas.backGoodsName=res.data.orderGoodsInf;
						datas.backOrderId=orderId;
						datas.backType=returnType=="reMoney"?0:1;
						datas.backGoodsPrice=res.data.orderPrice;
						$.ajax({
							url: url+"goods/backSellerHandle.do",
			            	data: datas,
			                dataType: "json",
			                async:false,
			                success:function(res){
			                	if(res.code == 200){
			                		window.location.href="../four/step3?backId="+res.data+"";
			                	}
			                },
			                error:function(){alert("网络错误");}
						})
					}
		        })
		}
		function Datas(res){
			var html='<div class="return_goods clearfix">';
			 html+='<span class="fl">退货商品：</span>';
			 html+='<div class="return_goods_pic fl">';
			 html+='	<img src="'+res.data.orderPic+'"/>';
			 html+='</div>';
			 html+='<p>'+res.data.orderGoodsInf+'</p>';
			 html+='<h4 class="fl">商品属性：'+res.data.orderSpec+'ml洗发水</h4>';
			 html+='<h5 class="fl" >'+res.data.orderPrice+'.00</h5>';
			 html+='</div>';
			 html+='<div class="ret_server clearfix">';
			 html+='<span class="fl">服务类型：</span>';
			 html+='<div class="reRadioDiv fl">';
			 html+='<input type="radio" name="reMon" id="reMon" value="reMoney" checked="checked"/><label for="reMon" class="reMonLab">退款</label>';
			 html+='<input type="radio" name="reMon" id="reMonAndGoods" value="reMonAndGoods" /><label for="reMonAndGoods">退款退货</label>';
			 html+='</div>';
			 html+='</div>';
			 html+='<div class="ret_money">';
			 html+='<span>退款金额：</span>';
			 html+='<input type="text" name="retMoney" id="retMoney"  />';
			 html+='</div>';
			 html+='<div class="ret_explain clearfix">';
			 html+='<span class="fl">退款说明：</span>';
			 html+='<textarea class="fl" name="retExplain" id="retExplain"  maxlength="200"></textarea>';
			 html+='</div>';
			 html+='<div class="ret_picture clearfix fl">';
			 html+='<span class="fl">上传图片：</span>';
			 html+='<div class="ret_sendPic fl">';
			 html+='	<input type="file" name="filed" id="file_upload" value="上传图片" multiple="multiple" accept="image/*" />';
			 html+='	<label for="file_upload">+</label>';
			 html+='</div>';
			 html+='</div>';
			 html+='<div id="preview" class="fl"></div>';
			 html+='<input type="button" value="确认" name="retSubmit" id="retSubmit" class="fl"/>';
			$(html).appendTo(".ret_content");
		}