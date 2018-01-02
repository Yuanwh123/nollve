<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>我的</title>
		<link rel="stylesheet" href="../css/mhwz.css" />
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/mhwz.js"></script>
		<script type="text/javascript" src="../js/url.js"></script>
		<script type="text/javascript" src="../js/jquery.cookie.js"></script>
		<script type="text/javascript" src="../js/mine.js"></script>
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
									<li><a href="../first/mall">首页</a></li>
									<li><a href="mine">我的</a></li>
									<li><a href="cart">购物车</a></li>
									<li><a href="order">我的订单</a></li>
									<li><a href="collection">收藏</a></li>
									<li><a href="comment">评价</a></li>
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
			<div class="mine clearfix">
				<div class="all_function fl">
					<ul>
						<li>全部功能</li>
						<li><a href="cart">我的购物车</a></li>
						<li class="mine_c"><a href="bought">已买到的宝贝</a><span></span></li>
						<li><a href="collection">我的收藏</a></li>
						<li><a href="comment">评价管理</a></li>
						<li><a href="accountSet">账户设置</a></li>
					</ul>
				</div>
				<div class="mine_main fl">
					<div class="mine_mainHead clearfix">
						<div class="mine_info fl" >
							<img src="../img/mine_head.png" alt="头像" />
							<span>VENVEN</span>
						</div>
						<div class="mine_addr fr">
							<a href="accountSet">我的收货地址<span></span></a>
						</div>
					</div>
					<div class="mine_procedure">
						<ul class="clearfix">
							<li><i id="to_pay">待付款<span id="toPay">1</span></i></li>
							<li><i id="to_send">待发货<span id="toSend">1</span></i></li>
							<li><i  id="to_get">待收货<span id="toGet">0</span></i></li>
							<li><i  id="to_com">待评价<span id="toEva">2</span></i></li>
							<li><i id="to_return">退款</i></li>
						</ul>
					</div>
					<div class="mine_logistics" id="mine_logistics">
						<div class="logistics_head">
							<img src="../img/mine_car.png" alt="car" />
							<span>我的物流</span>
						</div>
						<!-- 
						<div class="logistics_item clearfix">
							<div class="logistics_imgBox fl">
								<img src="../img/mine_proPic.png"/>
							</div>
							<div class="logistics_detail fl">
								<p>在浙江义乌分拨中心进行装车扫描，即将发往：广东佛山分拨中心</p>
								<p>2017-12-12 16:42:08  <a href="我的物流.html">查看物流明显</a></p>
							</div>
							<div class="confirm_fetchG fr">
								确认收货
							</div>
						</div>
						<div class="logistics_item clearfix">
							<div class="logistics_imgBox fl">
								<img src="../img/mine_proPic.png"/>
							</div>
							<div class="logistics_detail fl">
								<p>在上海分拨中心进行装车扫描，即将发往：广东佛山分拨中心</p>
								<p>2017-12-12 16:42:08  <a href="我的物流.html">查看物流明显</a></p>
							</div>
							<div class="confirm_fetchG fr">
								确认收货
							</div>
						</div>
						 -->
					</div>
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
						<!-- 
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
							<span class="fl">2017-12-12<i >订单号：113180003214562</i></span>
						</div>
						 -->
					</div>
					<div class="mine_main2 fl">
						<div class="mainTopbar">
							<ul class="clearfix">
								<li  id="bar_allOrder"  class="main_liActive">所有订单</li>
								<li id="bar_toPay">待付款</li>
								<li id="bar_toSend">待发货</li>
								<li id="bar_toget">待收货</li>
								<li id="bar_toCom">待评价</li>
							</ul>
						</div>
						<table class="waitComment" border="0" cellspacing="0" cellpadding="0" id="waitComment">
							<tr class="waitComment_H">
								<td>宝贝</td>
								<td>单价</td>
								<td>数量</td>
								<td>实付款</td>
								<td>交易状态</td>
								<td>交易操作</td>
							</tr>
							<!-- 
							<tr class="table_goodsInfo toCom">
								<td class="clearfix">
									<div class="com_borBox fl">
										<img src="../img/mine_proPic.png"/>
									</div>
									<p class="fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
								</td>
								<td>198.00</td>
								<td>1</td>
								<td>198.00</td>
								<td><p>订单已签收</p></td>
								<td><div><a href="#" class="clickToCom">评价</a></div></td>
							</tr>
							<tr class="table_goodsInfo toGetGoods">
								<td class="clearfix">
									<div class="com_borBox fl">
										<img src="../img/mine_proPic.png"/>
									</div>
									<p class="fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
								</td>
								<td>198.00</td>
								<td>1</td>
								<td>198.00</td>
								<td><p>订单已签收</p><a href="#">查看物流</a></td>
								<td><div class="allOrder_confirm">确认收货</div></td>
							</tr>
							<tr class="table_goodsInfo toSendGoods">
								<td class="clearfix">
									<div class="com_borBox fl">
										<img src="../img/mine_proPic.png"/>
									</div>
									<p class="fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
								</td>
								<td>198.00</td>
								<td>1</td>
								<td>198.00</td>
								<td><p id="toSendGoods_distance">等待商家发货</p></td>
								<td><div><a href="#">退货</a></div></td>
							</tr>
							<tr class="table_goodsInfo toPay">
								<td class="clearfix">
									<div class="com_borBox fl">
										<img src="../img/mine_proPic.png"/>
									</div>
									<p class="fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
								</td>
								<td>198.00</td>
								<td>1</td>
								<td>198.00</td>
								<td><p id="toSendGoods_distance">等待商家发货</p></td>
								<td><div>待付款</div></td>
							</tr>
							 -->
						</table>
					</div> 
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
									<a href="../first/index#skip"><li class="footer_firstLi">公司简介</li></a>
									<a href="../first/jour"><li>新闻资讯</li></a>
									<a href="javascript:;"><li class="contactUs">联系我们</li></a>
								</ul>
							</li>
							<li class="footerLi"><span>选购平台</span>
								<ul>
									<a href="网上商城.html"><li class="footer_firstLi">网上商城</li></a>
									<a href="https://mall.jd.com/index-626882.html"><li >京东旗舰店</li></a>
									<a href="https://novella.tmall.hk/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.hxfwHD"><li >天猫旗舰店</li></a>
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
		</div>
	</body>
</html>