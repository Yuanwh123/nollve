<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>立即购买</title>
		<link rel="stylesheet" href="../css/mhwz.css" />

		<style>
			.dw-list > span > a{color:red;}
			.add-address a{display: inline-block;width: 100%;height: 100%;}
			.reviseFix{display:none;box-sizing:border-box;border:1px solid #8d8b8b;padding:60px 40px;position: absolute;top:0;left:0;right:0;bottom:0;margin:auto;width:500px;height:400px;background: white;}
			.reviseFix h2{font-weight: normal;font-size: 20px;margin-bottom:20px;}
			.reviseFix h2 span{margin-left:20px;color:red;font-size:16px;}
			.reviseFix form > div{margin-bottom:20px;}
			.reviseFix form > div > input{padding:0 10px;border:1px solid #eee;width:300px;height:36px;border-radius: 5px;}
			.reviseFix form > div > label{margin-right:20px;font-size:14px;}
			.reviseFix form > div:nth-child(1) label{margin-right:32px;}
			.reviseFix form > div:nth-child(3) label{margin-right:46px;}
			.reviseFix form > input{padding:0;display:block;cursor:pointer;width:120px;height:36px;background:red;color:white;text-align: center;line-height:40px;border-radius: 5px;margin:0 auto;}
			.reWrapInfo{width:100%;height: 100%;position: relative;}
			.reWrapCon{width:100%;height:100%}
			.cha{position:absolute;top:-55px;right:-35px;;font-size:24px;cursor: pointer;}
			.dw-list h3{font-size: 14px;font-weight: normal;padding:5px 0;font-family: "微软雅黑";border-bottom:1px solid #dedede;}


		</style>
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/mhwz.js"></script>
		<script type="text/javascript" src="../js/cityJson.js"></script>
		<script type="text/javascript" src="../js/citySet.js"></script>
		<script type="text/javascript" src="../js/Popt.js"></script>
		<script type="text/javascript" src="../js/url.js"></script>
		<script type="text/javascript" src="../js/jquery.cookie.js"></script>
		<script type="text/javascript" src="../js/goodsBuy.js"></script>
	</head>
	<body>
		<div class="outer">
			<div class="gwTop">
				<div class="gwFlex2 clearfix">
					<div class="logo"><a href="../firstPages"><img src="../img/index_logo.png"/></a></div>
					<div class="logoNav fl clearfix">
						<ul>
							<li class="clearfix"><a href="../first/index" >网站首页</a></li>
							<li class="clearfix"><a href="../first/prod">产品中心</a></li>
							<li class="clearfix"><a href="../first/mall" class="gw_firstA">网上商城</a>
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
						<a href="regist">注册</a> <span>丨</span><a href="login">登录</a>
					</div>
					<div class="land fr land2">
						 <a href="../second/mine" class="userN"></a><span>丨</span><a href="#" class="quit">退出</a>
					</div>
				</div>
			</div>
			<div class="delivery">
                 <div class="delivery-wrap">
						<div class="bar-tit clearfix">
							<ul>
								<li>拍下商品</li>
								<li>付款到支付宝</li>
								<li>确认收货</li>
								<li>评价</li>
							</ul>
						</div>
						<div class="bar"><div><img src="../img/bar.png"></div></div>
						<div class="choose-add"><h3>选择收获地址</h3></div>
						<div class="add-text">
						<!-- 
							<div class="dw-list first-add">
								  <h4>广东<span>广州</span>(<i>刘小姐</i>)收</h4>
								  <h3>电话号码:<span>18861193732</span></h3>
								  <h4 class="detaAddress">苏州市相城区相城大道666号中翔商贸城一区F1</h4>
								  <span class="revise">修改</span>
								  <p class="mrdz">默认地址</p >
								  <div class="corner"><img src="../img/triangle.png"></div>
							</div>
							<div class="dw-list">

								  <h4>广东<span>广州</span>(<i>刘小姐</i>收)</h4>
								  <h3>电话号码:<span>18861193732</span></h3>
								  <h4>苏州市相城区相城大道666号中翔商贸城一区F1</h4>
							</div>
						    <div class="dw-list">
								 <h4>广东<span>广州</span><i>(刘小姐收)</i></h4>
								 <h3>电话号码:<span>18861193732</span></h3>
							     <h4>苏州市相城区相城大道666号中翔商贸城一区F1</h4>
						   </div>
					        <div class="dw-list add-address">
							   <a  href="accountSet.html#add">
								   <img src="../img/plus.png">
							   </a>
						   </div>
							   <div class="dw-list">7</div>
							   <div class="dw-list">8</div>
							   <div class="dw-list">9</div>
							   <div class="dw-list">0</div>-->
				         </div>
				          
						<div class="disAllAdd"><h3>显示全部地址</h3></div>
					 	<div class="disAllAdd1"><h3>收起</h3></div>
					</div>
            </div>

			<div class="confirmDiv">
				<table border="0" cellspacing="0" cellpadding="0" class="confirmInfo">
					<caption>确认订单信息</caption>
					<tr class="tab_thead">
						<td class="buy_goods">店铺宝贝</td>
						<td class="goods_attr">商品属性</td>
						<td class="goods_price">单价</td>
						<td class="goods_number">数量</td>
						<td class="goods_total">小计</td>
					</tr>
					<!-- 
					<tr class="tab_secRow">
						<td class="clearfix">
							<div class="g_boxLeft fl">
								<img src="../img/goods1.png"/>
							</div>
							<p class="goods_des fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
						</td>
						<td>商品属性：550ml洗发水</td>
						<td class="row_goodsOnePrice">198.00</td>
						<td>
							<span class="num_reduce">-</span><span class="goodsNum">1</span><span class="num_add">+</span>
						</td>
						<td class="row_total">198.00</td>
					</tr>
					 -->
				</table>
			</div>
			<div class="g_tax">
				<span class="tax_explain">进口税(含运费税款)商品售价已包税，另付税费</span><span class="tax_price">0.00</span>
			</div>
			<div class="post_method">
				<span class="post_des">运送方式:普通配送运费 免邮</span><span class="post_price">16.00</span>
			</div>
			<div class="totalPrice">
				<span class="total_price"><span class="total_position">合计</span><i class="tot_price">214.00</i></span>
			</div>
			<div class="send_info clearfix">
				<div class="sendBox fr">
					<div class="sendBox1">
						实付款：<span class="send_totalPrice">214.00</span><br />
					</div>
					<div class="sendBox2">
						寄送至：<span class="sendTo">广东广州天富华西路6号</span><br />
					</div>
					<div class="sendBox3">
						收货人：<span class="guestName">张小姐 15655662314</span>
					</div>
				</div>
				<button  class="sendButton fr">提交订单</button>
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
		<div class="reviseFix" id="reviseFix">
			<div class="reWrapInfo">
				<div class="reWrapCon">
					<h2>修改地址<span>(请认真填写，仔细核对信息)</span></h2>
					<form>
						<div><label for="reName">收件人</label><input type="text"  id="reName"/></div>
						<div><label for="reNum">手机号码</label><input type="text"  id="reNum"/></div>
						<div>
							<label>省份</label>
							<input type="text" id="city" name="add" placeholder="省--市--区" class="addressWrite_add" onfocus="this.placeholder=''" onblur="this.placeholder='省--市--区'"/>
						</div>
						<div><label for="reDeInfo">详细地址</label><input type="text" id="reDeInfo"/></div>
						<input type="submit" value="保存" id="reSave">
					</form>
				</div>
				<div class="cha">×</div>
			</div>


		</div>
	
		
	</body>
</html>
