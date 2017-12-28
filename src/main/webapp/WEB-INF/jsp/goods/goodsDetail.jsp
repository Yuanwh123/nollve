<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="sm.pojo.NoveGoods"%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <title>产品详情页面</title>
    <link rel="stylesheet" href="../css/mhwz.css" type="text/css">
    <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="../js/mhwz.js"></script>
	<script type="text/javascript" src="../js/cityJson.js"></script>
	<script type="text/javascript" src="../js/citySet.js"></script>
	<script type="text/javascript" src="../js/Popt.js"></script>
	<script type="text/javascript" src="../js/url.js"></script>
	<script type="text/javascript">
		var goodsId = GetQueryString("goodsId");
		var data={};
		data.goodsId=goodsId;
		
		$(function(){
			$.ajax({
				url: url+"goods/goodsDetail.do",
            	data: data,
                dataType: "json",
                async:false, 
                success:function(res){
                	if (res.code == 200) {
                		//查询成功
                		right(res);//图片
                		frist(res);//产品信息
                		second(res);
                		third(res);
                		cart(res);
                		bought();
                	}else{
                		
                	}
                	
				},
                error: function () {
                    alert("网络错误");
                }
			})
		});
		//直接购买
		function bought(){
			$('.bought').click(function(){
				
				alert("1");
			});
		}
		//购物车
		function cart(res){
			$('.AddToCart').click(function(){
				var p = $(".acc_goodsNum").html();
				var g = $(".dl3Active").html();
				var date={};
				data.userId = 1;
				data.goodsInf=res.data.goodsName;
				data.num=p;
				data.spec=g;
				data.price=339;
				$.ajax({
					url: url+"goods/goodsCart.do",
	            	data: data,
	                dataType: "json",
	                success:function(resu){
	                	if(resu.code == 200){
	                		alert(resu.data);
	                	}
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				});
				
			});
		}
		function second(res){
			var giPanel = document.getElementById("giPanel");
			var panel ='<div class="ddWrap"><div class="goodsDes">';
				panel+='<p><span>商品名称：</span>'+res.data.goodsName+'</p>    ';
				panel+='<p><span>品牌产地：</span>'+res.data.goodsArea+'</p>    ';
				panel+='<p><span>品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>'+res.data.goodsBrand+'</p>';
				panel+='<p><span>使用发质：</span>'+res.data.goodsUse+'</p>';
				panel+='<p><span>功&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;效：</span>'+res.data.goodsDescript+'</p></div></div>';
				panel+='<div><img src="'+res.data.goodsPic[0].small9+'"></div>';
				giPanel.innerHTML=panel;
		}
		function third(res){
			var ddWrapTwo =document.getElementById("giPanel1");
			var ddWrap='<div class="ddWrap ddWrapTwo"">';
			ddWrap+=' <div class="goods-rate">';
			ddWrap+='  <p>好评率</p>';
			ddWrap+=' <h1>98%</h1>';
			ddWrap+=' <div><img src="'+res.data.goodsPic[0].small11+'"><img src="'+res.data.goodsPic[0].small11+'"><img src="'+res.data.goodsPic[0].small11+'"><img src="'+res.data.goodsPic[0].small11+'"><img src="'+res.data.goodsPic[0].small11+'"></div>';
			ddWrap+=' </div>';
			ddWrap+='<div class="goodsDes goodsDesTwo">';
			ddWrap+='  <p><span>商品名称：</span>'+res.data.goodsName+'</p>';
			ddWrap+='  <p><span>品牌产地：</span>'+res.data.goodsArea+'</p>';
			ddWrap+='  <p><span>品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>'+res.data.goodsBrand+'</p>';
			ddWrap+='  <p><span>使用发质：</span>'+res.data.goodsUse+'</p>';
			ddWrap+='  <p><span>功&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;效：</span>'+res.data.goodsDescript+'</p>';
			ddWrap+='   </div></div>';
			ddWrap+='<div><img src="'+res.data.goodsPic[0].small10+'"></div>';
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
			
			var dcWrapDes = document.getElementById("dcWrapDes");
			var hh='<h2 class="dc-inf">'+res.data.goodsName+'</h2>'; 
				hh+='<p>原产地:'+res.data.goodsArea+'</p>';
				hh+='<div class="dc-price">￥339:00</div>';
				hh+='<ul class="dc-item">';
				hh+='<li class="dc-list dc-list1"><span>税费</span><i>包税</i></li>';
				hh+='<li class="dc-list dc-list2"><span>功能</span><i>'+res.data.goodsDescript+'</i></li>';
				hh+='<li class="dc-list dc-list3"><span>规格</span><i>'+res.data.goodsSize[0].size1+'</i><i class="dl3Active">'+res.data.goodsSize[0].size0+'</i><i>'+res.data.goodsSize[0].size2+'</i></li>';
				hh+='<li class="dc-list dc-list4"><span>数量</span><i class="acc_num_reduce">-</i><i class="acc_goodsNum">1</i><i class="acc_num_add">+</i></li>';
				hh+='<li class="dc-list dc-list5">';
				hh+='<span>配送至</span>';
				hh+='<input type="text" id="city" />';
				hh+='<span>有货</span>';
				hh+='</li>';
				hh+='</ul>';
				hh+='<div class="addshop">';
				hh+='<span class="AddToCart">加入购物车</span>   ';
				hh+='<a href="#" class="bought">直接购买</a>   ';
				hh+='<a href="#"><img src="../img/wjx.png"></a>';
				hh+='</div>';
            	dcWrapDes.innerHTML=hh;
		}
	</script>
</head>
<body>
<div class="gwTop">
    <div class="gwFlex2 clearfix" id="proCom_flex">
        <div class="logo"><img src="../img/index_logo.png"/></div>
        <div class="logoNav fl clearfix proC_logoNav">
            <ul>
                <li class="clearfix"><a href="../first/index" >网站首页</a></li>
                <li class="clearfix"><a href="../first/prod">产品中心</a></li>
                <li class="clearfix"><a href="../first/mall" class="gw_firstA">网上商城</a>
                    <ol>
						<li><a href="../second/index">首页</a></li>
						<li><a href="../second/mine">我的</a></li>
						<li><a href="../second/cart">购物车</a></li>
						<li><a href="../second/order">我的订单</a></li>
						<li><a href="../second/collection">收藏</a></li>
						<li><a href="../second/comment">评价</a></li>
					</ol>
                </li>
                <li class="clearfix"><a href="../first/jour">新闻中心</a></li>
            </ul>
        </div>
        <div class="pro_searchBox fl">
            <input type="text" name="pro_searchBox" id="pro_searchBox" value="" />
        </div>
        <div class="cha_icon fl"><a href="#"><img src="../img/pro_cha.png"/></a></div>
        <div class="proCom_car fl">
            <a href="购物车.html"><img src="../img/proCom_car.png"/></a>
            <span class="shopCount">2</span>
        </div>
    </div>
</div>
<div class="de-title"><p>首页>洗发水>红瓶</p></div>
<div class="detailCon">
    <div class="dcWrap">
        <div class="dcTop">
            <div class="dcWrapPic" id="dcWrapPic">
            <!-- 
                <div>
                    <img src="../img/de-big.png" class="disActive">
                </div>
                <ul>
                    <li><img src="../img/de-small1.png"></li>
                    <li><img src="../img/de-small2.png"></li>
                    <li><img src="../img/de-small3.png"></li>
                    <li><img src="../img/de-small4.png"></li>
                </ul>
              -->
            </div>
            <div class="dcWrapDes" id="dcWrapDes">
               <!-- 
                <h2>【cosme大赏推荐】NOVELLA 那绯澜 清爽洗发水 550毫升/瓶</h2>  
                <p>原产地:日本</p>
                <div class="dc-price">￥339:00</div>
                <ul class="dc-item">
                    <li class="dc-list dc-list1"><span>税费</span><i>包税</i></li>
                    <li class="dc-list dc-list2"><span>功能</span><i>控油平衡　深层清洁</i></li>
                    <li class="dc-list dc-list3"><span>规格</span><i>550ml</i><i class="dl3Active">330ml</i><i>750ml</i></li>
                    <li class="dc-list dc-list4"><span>数量</span><i class="acc_num_reduce">-</i><i class="acc_goodsNum">1</i><i class="acc_num_add">+</i></li>
                    <li class="dc-list dc-list5">
                        <span>配送至</span>
                        <input type="text" id="city" />
                        <span>有货</span>
                    </li>
                </ul>
                <div class="addshop">
                    <span class="AddToCart ">加入购物车</span>
                    <a href="#">直接购买</a>
                    <img src="../img/wjx.png">
                </div> -->
            </div>
        </div>
        <ul class="dcBar">
            <li class="goodsInfo dcBarActive">商品信息</li>
            <li class="evaluate">评价</li>
        </ul>
        <div class="panel">
            <div class="dbPanel panelOne">
                <div class="giPanel" id="giPanel">
                <!-- 
                    <div class="ddWrap">
                        <div class="goodsDes">
                            <p><span>商品名称：</span>那绯澜</p>
                            <p><span>品牌产地：</span>日本</p>
                            <p><span>品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>NOVELLA 那绯澜</p>
                            <p><span>使用发质：</span>所有发质</p>
                            <p><span>功&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;效：</span>控油　清洁　无硅油</p>
                        </div>
                    </div>
                    <div>
                        <img src="../img/g1.png">
                    </div>
                 -->
                </div>
                <div class="disPic">
                    <img src="../img/dp1.png">
                    <img src="../img/dp2.png">
                    <img src="../img/dp3.png">
                    <img src="../img/dp4.png">
                </div>
            </div>
            <div class="dbPanel panelTwo">
                <div class="giPanel" id="giPanel1">
                <!--  
                    <div class="ddWrap ddWrapTwo"">
                    	
                        <div class="goods-rate">
                            <p>好评率</p>
                            <h1>98%</h1>
                            <div><img src="../img/comment_star.png"><img src="../img/comment_star.png"><img src="../img/comment_star.png"><img src="../img/comment_star.png"><img src="../img/comment_star.png"></div>
                        </div>
                        
                        <div class="goodsDes goodsDesTwo">
                            <p><span>商品名称：</span>那绯澜</p>
                            <p><span>品牌产地：</span>日本</p>
                            <p><span>品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>NOVELLA 那绯澜</p>
                            <p><span>使用发质：</span>所有发质</p>
                            <p><span>功&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;效：</span>控油　清洁　无硅油</p>
                        </div>
                    </div>
                    <div>
                        <img src="../img/compic.png">
                    </div> -->
                </div>
                <div class="smallTit">
                    <p><span>排序:</span><span class="moRen">默认</span><span>评价时间</span> <i>↓</i></p>
                </div>
                <div class="comDetail clearfix">
                    <div class="comDetail_left fl">
                        <div class="comHead">
                            <img src="../img/proCom_head.png"/>
                        </div>
                    </div>
                    <div class="comDetail_right fl">
                        <div class="comm_item">
                            <div class="star_and_time clearfix">
                                <span></span><span></span><span></span><span></span><span></span>
                                <i class="fr">2017-08-22  11：59 </i>
                                <p>功效：<span>去屑洗发水</span>      净含量：<span>550ml</span></p>
                                <div class="comContent">
                                    一直在用这款洗发水 无限回购 这次双十一便宜了很多 一下子囤了五瓶 够用一阵子了
                                </div>
                                <div class="comContent_pic clearfix">
                                    <div class="comPic_item fl">
                                        <img src="../img/comment_pic1.png"/>
                                        <img src="../img/big_border.png" class="big_border"/>
                                    </div>
                                    <div class="comPic_item fl">
                                        <img src="../img/comment_pic1.png"/>
                                        <img src="../img/big_border.png" class="big_border"/>
                                    </div>
                                    <div class="comPic_item fl">
                                        <img src="../img/comment_pic1.png"/>
                                        <img src="../img/big_border.png" class="big_border"/>
                                    </div>
                                </div>
                                <div class="hideBox">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="comDetail clearfix">
                    <div class="comDetail_left fl">
                        <div class="comHead">
                            <img src="../img/comment_head2.png"/>
                        </div>
                    </div>
                    <div class="comDetail_right fl">
                        <div class="comm_item">
                            <div class="star_and_time clearfix">
                                <span></span><span></span><span></span><span></span><span></span>
                                <i class="fr">2017-08-22  11：59 </i>
                                <p>功效：<span>去屑洗发水</span>      净含量：<span>550ml</span></p>
                                <div class="comContent">
                                    一直在用这款洗发水 无限回购 这次双十一便宜了很多 一下子囤了五瓶 够用一阵子了
                                </div>
                                <div class="comContent_pic clearfix">
                                    <div class="comPic_item fl">
                                        <img src="../img/comment_pic1.png"/>
                                        <img src="../img/big_border.png" class="big_border"/>
                                    </div>
                                    <div class="comPic_item fl">
                                        <img src="../img/comment_pic1.png"/>
                                        <img src="../img/big_border.png" class="big_border"/>
                                    </div>
                                    <div class="comPic_item fl">
                                        <img src="../img/comment_pic1.png"/>
                                        <img src="../img/big_border.png" class="big_border"/>
                                    </div>
                                </div>
                                <div class="hideBox">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
