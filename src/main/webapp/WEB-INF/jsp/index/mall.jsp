<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>网上商城</title>
		<link rel="stylesheet" href="../css/mhwz.css" />
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/mhwz.js"></script>
		
	</head>
	<body>
		<div class="gwTop">
			<div class="gwFlex2 clearfix">
				<div class="logo"><img src="../img/index_logo.png"/></div>
				<div class="logoNav fl clearfix">
						<ul>
							<li class="clearfix"><a href="index" >网站首页</a></li>
							<li class="clearfix"><a href="prod">产品中心</a></li>
							<li class="clearfix">
								<a href="mall" class="gw_firstA">网上商城</a>
								<ol>
									<li><a href="index">首页</a></li>
									<li><a href="../second/mine">我的</a></li>
									<li><a href="../second/cart">购物车</a></li>
									<li><a href="../second/order">我的订单</a></li>
									<li><a href="../second/collection">收藏</a></li>
									<li><a href="../second/comment">评价</a></li>
								</ol>
							</li>
							<li class="clearfix"><a href="jour">新闻中心</a></li>
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
		
		<div class="outer">
			<div class="container5">
				<div class="inner5">
					<div class="innerwrapper5">
						<a href="#"><img src="../img/gwPro2.png"/></a>
					</div>
					<div class="innerwrapper5">
						<a href="#"><img src="../img/gwPro.png"/ ></a>
					</div>
					<div class="innerwrapper5">
						<a href="#"><img src="../img/gwPro2.png"/ ></a>
					</div>
					<div class="innerwrapper5">
						<a href="#"><img src="../img/gwPro.png"/></a>
					</div>
				</div>
				<div class="pagination5">
					<span class="lb_active5"></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
			</div>
			<div class="eshop_item clearfix">
				<div class="picBox fl">
					<img src="../img/cpPro1.png"/>
				</div>
				<div class="proDescription fl">
					<h3>NOVELLA</h3>
					<div class="des">
						<h5>红瓶</h5>
						<p>清爽防脱<br />富含杏子油</p>
					</div>
					<div class="price">
						<p></p>
						<span>299</span>
						<div>
							<input value="购买" name="1" type="button" class="b1" onclick="go(this)"/><br />
							<b class="b2">RMB</b>
						</div>
					</div>
				</div>
			</div>
			<div class="eshop_item clearfix eshop_item2">
				<div class="proDescription fl">
					<h3>NOVELLA</h3>
					<div class="des">
						<h5>棕瓶</h5>
						<p>修复受损<br />富含榛子油</p>
					</div>
					<div class="price">
						<span>299</span>
						<div>
							<input value="购买" name="2" type="button" class="b1" onclick="go(this)"/><br />
							<b class="b2">RMB</b>
						</div>
						<p></p>
					</div>
				</div>
				<div class="picBox fl">
					<img src="../img/cpPro2.png"/>
				</div>
			</div>
			<div class="eshop_item clearfix">
				<div class="picBox fl">
					<img src="../img/cpPro3.png"/>
				</div>
				<div class="proDescription fl">
					<h3>NOVELLA</h3>
					<div class="des">
						<h5>蓝瓶</h5>
						<p>滋润保湿<br />富含鳄梨油</p>
					</div>
					<div class="price">
						<p></p>
						<span>299</span>
						<div class="clearfix">
							<input value="购买" type="button" name="3" class="b1" onclick="go(this)"/><br />
							<b class="b2">RMB</b>
						</div>
					</div>
				</div>
			</div>
			<div class="eshop_beauty">
	   <div class="eb_pic"><img src="../img/eshop_beauty.jpg"></div>
	   <div class="boxWidth">
	      <h2>NOVELLA</h2>
	      <h3>来自日本殿堂级轻奢洗护</h3>
	      <ul>
	         <li>无硅油</li>
	         <li>无色素</li>
	         <li>无香精香料</li>
	         <li>富含氨基酸</li>
	      </ul>
	      <p>深层清洁平衡控油&nbsp;头发清爽更飘逸</p >
	      <a href="#">SHOP NOW</a>
	   </div>
	</div>
			<div class="eshopList clearfix">
				<div class="production fl production1">
					<h3>白檀香</h3>
					<p>保持头发有光泽  滋润头发  保护头发</p>
					<span>Pleasant travel</span>
					<div class="price">
						<span>115</span>
						<div class="clearfix">
							<b class="b1">购买</b><br />
							<b class="b2">RMB</b>
						</div>
					</div>
					<img  class="pic_adj" src="../img/samePro1.png"/>
				</div>
				<div class="production fl">
					<h3>花香型</h3>
					<p>深彻滋养发丝 清爽不油腻 一瓶多效</p>
					<span>Pleasant travel</span>
					<div class="price">
						<span>115</span>
						<div class="clearfix">
							<b class="b1">购买</b><br />
							<b class="b2">RMB</b>
						</div>
					</div>
					<img  class="pic_adj" src="../img/samePro2.png"/>
				</div>
				<div class="production fl">
					<h3>柠檬香</h3>
					<p>发随香动 给你无可挑剔的美</p>
					<span>Pleasant travel</span>
					<div class="price">
						<span>115</span>
						<div class="clearfix">
							<b class="b1">购买</b><br />
							<b class="b2">RMB</b>
						</div>
					</div>
					<img  class="pic_adj" src="../img/samePro3.png"/>
				</div>
			</div>
			<div class="eshopList clearfix eshopList2">
				<div class="production fl">
					<img  class="pic_adj" src="../img/samePro4.png"/>
					<h3>黑莓香</h3>
					<p>灵动悠然的黑莓香混合摩洛哥精油</p>
					<span>Pleasant travel</span>
					<div class="price">
						<span>115</span>
						<div class="clearfix">
							<b class="b1">购买</b><br />
							<b class="b2">RMB</b>
						</div>
					</div>
				</div>
				<div class="production fl production3">
					<img src="../img/samePro5.png" / >
					<h3>龙涎香</h3>
					<p>摩洛哥精油滋润养护发质，让人如痴如醉</p>
					<span>Pleasant travel</span>
					<div class="price">
						<span>115</span>
						<div class="clearfix">
							<b class="b1">购买</b><br />
							<b class="b2">RMB</b>
						</div>
					</div>
				</div>
			</div>
			<div class="proList4 clearfix" id="proList4_life">
				<div class="proList2_text fl clearfix" id="proList2_text">
					<h3>其他产品</h3>
					<h4>取之自然 用之安心 安全健康 护肤护发</h4>
					<p>Take the natural use of safe and healthy skin care and hair care</p>
				</div>
			</div>
			<div class="lifeGoods clearfix">
				<div class="lifeGoods_item fl">
					<a href="#"><img src="../img/proList4_pic1.png"/></a>
					<div class="lifeGoods_price">
						<i>115</i>
						<div class="buy">
							<span class="buy_s1">购买</span><br />
							<span class="buy_s2">RMB</span>
						</div>
					</div>
				</div>
				<div class="lifeGoods_item fl">
					<a href="#"><img src="../img/proList4_pic2.png"/></a>
					<div class="lifeGoods_price">
						<i>145</i>
						<div class="buy">
							<span class="buy_s1">购买</span><br />
							<span class="buy_s2">RMB</span>
						</div>
					</div>
				</div>
				<div class="lifeGoods_item fl">
					<a href="#"><img src="../img/proList4_pic3.png"/></a>
					<div class="lifeGoods_price">
						<i>95</i>
						<div class="buy">
							<span class="buy_s1">购买</span><br />
							<span class="buy_s2">RMB</span>
						</div>
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
			
	</body>
	<script type="text/javascript">
			function go(e){
				var id = e.name;
				window.location.href="../third/goods?goodsId="+id+"";
			}
	</script>
</html>
