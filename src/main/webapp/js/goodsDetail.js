var goodsId = GetQueryString("goodsId");
		var data={};
		data.goodsId=goodsId;
		var datas ;
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
			$.ajax({
				url: url+"goods/goodsDetail.do",
            	data: data,
                dataType: "json",
                async:false, 
                success:function(res){
                	if (res.code == 200) {
                		//查询成功
                		datas=res;
                		right(res);//图片
                		frist(res);//产品信息
                		second(res);
                		third(res);
                		cart(res);//加入 购物车
                		bought(res);//直接购买
                		collection(res);//收藏
                		cartNum();
                		//点击规格进行操作
                		
                	}
				},
                error: function () {
                    alert("网络错误");
                }
			})
			
		});
		function choosePrice(e){
			var spec=$(e).html();
			var specs0 = datas.data.goodsSize[0].size0;
			var specs1 = datas.data.goodsSize[0].size1;
			var specs2 = datas.data.goodsSize[0].size2;
			var value="";
			if(spec==specs0){
				value = datas.data.goodsPrice[0].price0;
			}else if(spec==specs1){
				value = datas.data.goodsPrice[0].price1;
			}else{
				value = datas.data.goodsPrice[0].price2;
			}
			$(".dc-price").html("￥"+value+":00");
		}
		//直接购买
		function bought(res){
			$('.bought').click(function(){
				var data = order(res);
				order(res);
				$.ajax({
					url: url+"goods/goodsCartBuy.do",
	            	data: data,
	                dataType: "json",
	                success:function(resu){
	                	if(resu.code == 200){
	                		window.location.href="../third/med?orderId="+resu.data+"";
	                	}
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				});
			});
		}
		function order(res){
			var p = $(".acc_goodsNum").html();
			var g = $(".dl3Active").html();
			var date={};
			data.userId = userId;
			data.goodsInf=res.data.goodsName;
			data.num=p;
			data.spec=g;
			data.price=$(".dc-price").html().substring(1,$(".dc-price").html().length-3);
			data.pic=res.data.goodsPic[0].small0;
			data.goodsId=goodsId;
			return data;
		}
		//收藏
		function collection(res){
			$('.scIcon').click(function(){
				if($(this).hasClass('scIcon')&&!$(this).hasClass('scIcon1')){
					var data =order(res);
					$.ajax({
						url: url+"goods/goodsCartColl.do",
		            	data: data,
		                dataType: "json",
		                success:function(resu){
		                	if(resu.code == 200){
		                		$(".scIcon").toggleClass('scIcon1');
		                	}
		                },
		                error: function () {
		                    alert("网络错误");
		                }
					});
				}else{
					alert("你已经收藏了");
				}
				
			});
		}
		
		//购物数量
		function cartNum(){
			var data={};
			data.userId=userId;
			$.ajax({
				url: url+"goods/goodsCartNum.do",
            	data: data,
                dataType: "json",
                success:function(resu){
                	if(resu.code == 200){
                		$(".shopCount").html(resu.data);
                	}
                },
                error: function () {
                    alert("网络错误");
                }
			})
		}
		//购物车
		function cart(res){
			$('.AddToCart').click(function(){
				var data =order(res);
				$.ajax({
					url: url+"goods/goodsCart.do",
	            	data: data,
	                dataType: "json",
	                success:function(resu){
	                	if(resu.code == 200){
	                		alert("加入购物车成功");
	                		cartNum();
	                	}
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				});
			});
		}
		function second(res){
			var giPanel = document.getElementById("PanelInf");
			var panel ='<div class="giPanel" id="giPanel"><div class="ddWrap"><div class="goodsDes">';
				panel+='<p><span>商品名称：</span>'+res.data.goodsName+'</p>    ';
				panel+='<p><span>品牌产地：</span>'+res.data.goodsArea+'</p>    ';
				panel+='<p><span>品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>'+res.data.goodsBrand+'</p>';
				panel+='<p><span>使用发质：</span>'+res.data.goodsUse+'</p>';
				panel+='<p><span>功&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;效：</span>'+res.data.goodsDescript+'</p></div></div>';
				panel+='<div><img src="'+res.data.goodsPic[0].small9+'"></div>';
				panel+='</div>';
				panel+=' <div class="disPic">';
				panel+='  <img src="'+res.data.goodsPic[0].small11+'">';
				panel+='   <img src="'+res.data.goodsPic[0].small12+'">';
				panel+='   <img src="'+res.data.goodsPic[0].small13+'">';
				panel+='   <img src="'+res.data.goodsPic[0].small14+'">';
				panel+=' </div>';
				giPanel.innerHTML=panel;
		}
		function third(res){
			var ddWrapTwo =document.getElementById("giPanel1");
			var ddWrap='<div class="ddWrap ddWrapTwo"">';
			ddWrap+=' <div class="goods-rate">';
			ddWrap+='  <p>好评率</p>';
			ddWrap+=' <h1>98%</h1>';
			ddWrap+=' <div><img src="'+res.data.goodsPic[0].small10+'"><img src="'+res.data.goodsPic[0].small10+'"><img src="'+res.data.goodsPic[0].small10+'"><img src="'+res.data.goodsPic[0].small10+'"><img src="'+res.data.goodsPic[0].small10+'"></div>';
			ddWrap+=' </div>';
			ddWrap+='<div class="goodsDes goodsDesTwo">';
			ddWrap+='  <p><span>商品名称：</span>'+res.data.goodsName+'</p>';
			ddWrap+='  <p><span>品牌产地：</span>'+res.data.goodsArea+'</p>';
			ddWrap+='  <p><span>品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>'+res.data.goodsBrand+'</p>';
			ddWrap+='  <p><span>使用发质：</span>'+res.data.goodsUse+'</p>';
			ddWrap+='  <p><span>功&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;效：</span>'+res.data.goodsDescript+'</p>';
			ddWrap+='   </div></div>';
			ddWrap+='<div><img src="'+res.data.goodsPic[0].small0+'"></div>';
			ddWrapTwo.innerHTML=ddWrap;
		}
		function right(res){
			var dcWrapPic = document.getElementById("dcWrapPic");
			var pic =' <div><img src="'+res.data.goodsPic[0].small0+'" class="disActive"><img src="'+res.data.goodsPic[0].small5+'" class="hid">';
			
				pic+='<img src="'+res.data.goodsPic[0].small6+'" class="hid"><img src="'+res.data.goodsPic[0].small7+'" class="hid"><img src="'+res.data.goodsPic[0].small8+'" class="hid"></div>';
				pic+='<ul><li><img src="'+res.data.goodsPic[0].small1+'"></li><li><img src="'+res.data.goodsPic[0].small2+'"></li>';
				pic+='<li><img src="'+res.data.goodsPic[0].small3+'"></li>';
				pic+='<li><img src="'+res.data.goodsPic[0].small4+'"></li></ul>';
				dcWrapPic.innerHTML=pic;
		}
		function frist(res){
			var colStatus=GetQueryString("colStatus");
			var dcWrapDes = document.getElementById("dcWrapDes");
			var value = "省--市--区";
			var hh='<h2 class="dc-inf">'+res.data.goodsName+'</h2>'; 
				hh+='<p>原产地:'+res.data.goodsArea+'</p>';
				hh+='<div class="dc-price">￥339:00</div>';
				hh+='<ul class="dc-item">';
				hh+='<li class="dc-list dc-list1"><span>税费</span><i>包税</i></li>';
				hh+='<li class="dc-list dc-list2"><span>功能</span><i>'+res.data.goodsDescript+'</i></li>';
				hh+='<li class="dc-list dc-list3"><span>规格</span><i onclick="choosePrice(this)">'+res.data.goodsSize[0].size1+'</i><i class="dl3Active" onclick="choosePrice(this)">'+res.data.goodsSize[0].size0+'</i><i onclick="choosePrice(this)">'+res.data.goodsSize[0].size2+'</i></li>';
				hh+='<li class="dc-list dc-list4"><span>数量</span><i class="acc_num_reduce">-</i><i class="acc_goodsNum">1</i><i class="acc_num_add">+</i></li>';
				hh+='<li class="dc-list dc-list5">';
				hh+='</li>';
				hh+='</ul>';
				hh+='<div class="addshop">';
				hh+='<span class="AddToCart">加入购物车</span>   ';
				hh+='<a href="#" class="bought">直接购买</a>   ';
				if(colStatus == 3){
					hh+='<div class="scIcon1" id="scIcon"></div>';
				}else{
					hh+='<div class="scIcon" id="scIcon"></div>';
				}
				hh+='</div>';
            	dcWrapDes.innerHTML=hh;
		}