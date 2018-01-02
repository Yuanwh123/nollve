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
				
				var data={};
				data.userId=userId;
				$.ajax({
					url: url+"goods/goodsColNum.do",
	            	data: data,
	                dataType: "json",
	                async:false, 
	                success:function(res){
	                	if(res.code ==200){
	                		ColLists(res);
	                	}
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				});
				
			})
		
			//收藏列表
			function ColLists(res){
				var html="";
				for(var i=0 ;i<res.data.length;i++){
					html+='<div class="mineCol_item fl">';
					html+='<div>';
					html+='<input type="hidden" value="'+res.data[i].orderId+'"/>';
					html+='</div>';
					html+='<div class="col_imgBox">';
					html+='<a href="../third/goods?colStatus=3&goodsId='+res.data[i].orderGoodsId+'" class="Col"><img src="'+res.data[i].orderPic+'" alt="production"/></a>';
					html+='</div>';
					html+='<div class="col_text">';
					html+='<p><span>'+res.data[i].orderGoodsInf+'</span></p>';
					html+='<h5>￥'+res.data[i].orderPrice/res.data[i].orderGoodsNum+'</h5>';
					html+='</div>';
					html+='</div>';
				}
				$(html).appendTo("#clearfix");
			}