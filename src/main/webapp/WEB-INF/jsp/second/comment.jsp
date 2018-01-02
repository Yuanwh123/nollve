<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>所有评价</title>
		<link rel="stylesheet" href="../css/mhwz.css" />
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/mhwz.js"></script>
		<script type="text/javascript" src="../js/url.js"></script>
		<script type="text/javascript" src="../js/jquery.cookie.js"></script>
	</head>
	<body>
	<div class="bg_div"></div>
		<div class="outer">
			<div class="gwTop">
				<div class="gwFlex2 clearfix">
					<div class="logo"><a href="../firstPages"><img src="../img/index_logo.png"/></a></div>
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
									<li><a href="../second/order">我的订单</a></li>
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
					<div class="land fr land1">
						<a href="../regist">注册</a> <span>丨</span><a href="../login">登录</a>
					</div>
					<div class="land fr land2">
						 <a href="../second/mine" class="userN"></a><span>丨</span><a href="#" class="quit">退出</a>
					</div>
			</div>
				</div>
			</div>
			<div class="mine clearfix">
				<div class="all_function fl">
					<ul>
						<li>全部功能</li>
						<li><a href="cart">我的购物车</a></li>
						<li class="mine_c"><a href="bought">已买到的宝贝</a><span></span></li>
						<li><a href="collection">我的收藏</a></li>
						<li><a href="#" id="comRegis">评价管理</a></li>
						<li><a href="accountSet">账户设置</a></li>
					</ul>
				</div>
				<div class="mine_main fl">
					<div class="mainTopbar">
						<ul class="clearfix">
							<li id="allCom" class="main_liActive">所有评价</li>
						</ul>
					</div>
					<table border="0" cellspacing="0" cellpadding="0" class="allCom_table">
						<tr class="allCom_table_H">
							<td>星级</td>
							<td>评价</td>
							<td>宝贝信息</td>
						</tr>
						<tr class="allCom_tableLine">
							<td><img src="../img/comment_star.png"/><img src="img/comment_star.png"/><img src="img/comment_star.png"/><img src="img/comment_star.png"/><img src="img/comment_star.png"/></td>
							<td>是正品，跟买回来的一样</td>
							<td class="clearfix">
								<div class="com_borBox fl">
									<img src="../img/mine_proPic.png"/>
								</div>
								<p class="fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
							</td>
						</tr>
					</table>
				</div>
			</div>
			
			
			<div class="footer clearfix">
				<div class="footList clearfix">
					<div class="listLeft clearfix fl">
						<ul>
							<li class="footerLi"><span>选购及了解</span>
							<ul>
								<a href="../first/mall"><li class="footer_firstLi">洗发水</li></a>
								<a href="../first/mall"><li>沐浴露</li></a>
								<a href="../first/mall"><li>精油</li></a>
								<a href="../first/mall"><li>洗面奶</li></a>
							</ul>
							</li>
							<li class="footerLi"><span>关于我们</span>
								<ul>
									<a href="../first/index/#skip"><li class="footer_firstLi">公司简介</li></a>
									<a href="#"><li>新闻资讯</li></a>
									<a href="javascript:;"><li class="contactUs">联系我们</li></a>
								</ul>
							</li>
							<li class="footerLi"><span>选购平台</span>
								<ul>
									<a href="../first/mall"><li class="footer_firstLi">网上商城</li></a>
									<a href="https://mall.jd.com/index-626882.html" target="_blank"><li >京东旗舰店</li></a>
									<a href="https://novella.tmall.hk/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.hxfwHD" target="_blank"><li >天猫旗舰店</li></a>
								</ul>
							</li>
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
						<li id="bo1">服务条款</li>
						<li class="bo1">隐私政策</li>
						<li class="bo2">版权所有-</li>
						<li id="bo3">NOVELLA  LA MIA STORIA 有限公司 苏ICP 备546675986号-1 </li>
					</ul>
					<a href="#"><img src="../img/returnTop.png" class="returnTop"/></a>
				</div>
				<div class="phoneUs">
					<div class="phoneHead">联系我们</div>
					<div class="pnoneCon"><img src="../img/aa.phone.png"/>400-1234-678</div>
				</div>
			</div>
	</body>
</html>
