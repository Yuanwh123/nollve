<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>已买到的宝贝</title>
		<link rel="stylesheet" href="../css/mhwz.css" />
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/mhwz.js"></script>
	</head>
	<body>
		<div class="outer">
			<div class="gwTop">
				<div class="gwFlex2 clearfix">
					<div class="logo"><img src="../img/index_logo.png"/></div>
					<div class="logoNav fl clearfix">
						<ul>
							<li class="clearfix"><a href="../first/index" >网站首页</a></li>
							<li class="clearfix"><a href="../first/prod">产品中心</a></li>
							<li class="clearfix">
								<a href="../first/mall" class="gw_firstA">网上商城</a>
								<ol>
									<li><a href="../first/index">首页</a></li>
									<li><a href="../second/mine">我的</a></li>
									<li><a href="../second/cart">购物车</a></li>
									<li><a href="我的2.html">我的订单</a></li>
									<li><a href="../second/collection">收藏</a></li>
									<li><a href="../second/comment">评价</a></li>
								</ol>
							</li>
							<li class="clearfix"><a href="../first/jour">新闻中心</a></li>
						</ul>
						
					</div>
					<div class="searchBox fl">
						<input type="text" name="searchBox" id="searchBox" value="" />
					</div>
					<div class="land fr">
						<a href="#">注册</a> <span>丨</span><a href="#">登录</a>
					</div>
				</div>
			</div>
			<div class="mine clearfix">
				<div class="all_function fl">
					<ul>
						<li>全部功能</li>
						<li><a href="cart">我的购物车</a></li>
						<li class="mine_c"><a href="mine" id="owned_">已买到的宝贝</a><span></span></li>
						<li><a href="collection">我的收藏</a></li>
						<li><a href="comment">评价管理</a></li>
					</ul>
				</div>
				<div class="mine_main fl">
					
					<div class="mine_logistics" id="mine_logistics_owned">
						<div class="logistics_head">
							<img src="../img/mine_shopcar.png" alt="car" />
							<span>已买到的宝贝</span>
						</div>
						<div class="ownerLine">
							<ul>
								<li>宝贝</li>
								<li>数量</li>
								<li>实付款</li>
								<li>交易状态</li>
							</ul>
						</div>
						<div class="logistics_item clearfix" id="owned_item">
							<div class="logistics_imgBox fl">
								<img src="../img/mine_proPic.png"/>
							</div>
							<div class="owned_detail fl">
								<p>日本NOVELLA那绯澜无硅油氨基酸滋润保湿洗发水550ml</p>
								
							</div>
							<div class="owned_condition fr">已付款</div>
							<div class="owned_price fr">332.00</div>
							<div class="owned_num fr">1</div>
							<span>2017-12-12</span><i>订单号：113180003214562</i>
						</div>
						
					</div>
					
					
				</div>
			</div>
			
			
			<div class="footer clearfix">
				<div class="footList clearfix">
					<div class="listLeft clearfix fl">
						<ul>
							<a href="#"><li class="footerLi">选购及了解
							<ul>
								<a href="#"><li class="footer_firstLi">洗发水</li></a>
								<a href="#"><li>沐浴露</li></a>
								<a href="#"><li>精油</li></a>
								<a href="#"><li>洗面奶</li></a>
							</ul>
							</li></a>
							<a href="#"><li class="footerLi">关于我们
								<ul>
									<a href="#"><li class="footer_firstLi">公司简介</li></a>
									<a href="#"><li>公司荣誉</li></a>
									<a href="#"><li>新闻资讯</li></a>
									<a href="#"><li>联系我们</li></a>
								</ul>
							</li></a>
							<a href="#"><li class="footerLi">选购平台
								<ul>
									<a href="#"><li class="footer_firstLi">网上商城</li></a>
									<a href="#"><li >京东旗舰店</li></a>
									<a href="#"><li >天猫旗舰店</li></a>
								</ul>
							</li></a>
							<a href="#"><li class="footerLi">快速链接
								<ul>
									<a href="#"><li  class="footer_firstLi">企业采购</li></a>
								</ul>
							</li></a>
						</ul>
					</div>
					<div class="listRight clearfix">
						<p>全国服务热线</p>
						<h5>400-8228-228</h5>
						<div class="fl">
							<img src="../img/weixin1.png" class="footerPic"/>
							<p class="footerP1">微信服务号</p>
						</div>
						<div class="fl">
							<img src="../img/weixin2.png" />
							<p class="footerP2">微博</p>
						</div>
					</div>
				</div>
				<div class="copy clearfix">
					<ul>
						<li id="bo1"><a href="#">服务条款</a></li>
						<li class="bo1"><a href="#">隐私政策</a></li>
						<li class="bo2"><a href="#">版权所有-</a></li>
						<li id="bo3">NOVELLA  LA MIA STORIA有限公司 苏ICP 备546675986号-1 </li>
					</ul>
					<a href="#"><img src="../img/returnTop.png" class="returnTop"/></a>
				</div>
				
			</div>
		</div>
	</body>
</html>
