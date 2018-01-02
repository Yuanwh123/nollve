<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
		<title>主页</title>
	</head>
	<script type="text/javascript" src="js/mhwz.js"></script>
	<link rel="stylesheet" href="css/mhwz.css" />
	<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="js/url.js"></script>
	
	<script type="text/javascript">
	
		$(function(){
			var account = GetQueryString("account");
			var COOKIE_NAME = 'sys_em_username';
			var cookieName = $.cookie(COOKIE_NAME);
			if(cookieName && cookieName == "null"){
				setCookie(COOKIE_NAME,account);
				//$.cookie(COOKIE_NAME,account, {expires: 15});
			}
		})
		function setCookie(name,value)
		{
		var Days = 30;
		var exp = new Date();
		exp.setTime(exp.getTime() + Days*24*60*60*1000);
		document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
		}
	
	</script>
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
	
	<body>
	
		<div class="bg_div"></div>
		<div class="outer">
			<div class="top">
				<div class="flex1">
					<div class="fl">Tel：13636638998</div>
					<ul class="land1">
						<a href="regist"><li class="fr">注册</li></a>
						<a href="login"><li class="bor fr">登录</li></a>
					</ul>
					<ul class="land2">
						<li class="fr quit">退出</li>
						<a href="second/mine"><li class="bor fr userN"></li></a>
					</ul>
					
				</div>
			</div>
			<div class="nav">
				<div class="navLeft fl">
					<div class="logo"><img src="img/index_logo.gif" alt="logo" class="index_logo"/></div>
				</div>
				<div class="navRight fl clearfix">
					<ul>
						<li ><a href="first/index" class="first width">网站首页</a></li>
						<li><a href="first/prod" class="width">产品中心</a></li>
						<li><a href="first/mall" class="width">网上商城</a></li>
						<li class="li_smlall fl"><a href="first/jour">新闻中心</a></li>
					</ul>
					<div  id="index_searchBox">
						<input type="text" name="searchBox" id="searchBox_index" value="" />
					</div>
				</div>
				
			</div>
			<div class="cont">
				<div class="inn clearfix">
					<div class="innerwrap fl" >
						<a href="#"><img src="img/ad.png"/></a>
					</div>
					<div class="innerwrap fl" >
						<a href="#"><img src="img/gwPro.png" /></a>
					</div>
					<div class="innerwrap fl">
						<a href="#"><img src="img/ad.png"/></a>
					</div>
					<div class="innerwrap fl" >
						<a href="#"><img src="img/gwPro.png"/></a>
					</div>
					<div class="innerwrap fl">
						<a href="#"><img src="img/e-shop_pic1.png"/></a>
					</div>
				</div>
				<div class="pagi">
					<span class="lb_act"></span>
					<span></span>
					<span></span>
					<span></span>
					<span></span>
				</div>
			</div>
			<a  name="skip"></a>
			<div class="about clearfix">
					<div class="aboutLeft fl"><img src="img/beauty.png" alt="beauty"/></div>
					<div class="aboutRight fl">
						<h3 class="h3_c">关于我们</h3>
						<h3 class="h3_eng">ABOUT&nbsp;US</h3>
						<p class="chinese">NOVELLA  那绯澜曾经登上日本最大时尚音乐盛典Girls Award网站的首席合作伙伴日本乐天市场的头版，无疑是日本洗护产品业界一颗冉冉升起的红星.Novella的洗发水无硅，无着色，不含香料，不含硫酸钠、不刺激头皮，集合了多种纯天然精油，“纯净”到孕妇孩子都可以放心使用。NOVELLA洗护系产品，精益求精，充分发挥日本的“匠人精神”，不惜成本为消费者呈现高品质的健康护发产品。</p>
						<p class="english">NOVELLA that Fei rings used on Japan's largest music festival Girls fashion Award site on the front page of the chief partner of Japan's lotte market, is undoubtedly Japan wash protect products industry is a rising  star of the red star. NOVELLA shampoo, no silicon, no color, do not contain spices, excluding sodium sulfate, do not stimulate scalp, brings together a variety of pure natural essential oil, \"pure\" to pregnant women children can be at ease use. NOVELLA wash protect series products, excellence, give full play to the \"spirit\" craftsmen of Japan, at the cost to the health of the consumer presents high quality  hair care products.</p>
						<a href="javascript:;" class="ab_mo" id="ab_mo">
							<div class="ab_inner">
								<div class="ab_outer">了解更多</div>
							</div>
						</a>
					</div>
				
				<div class="phoneUs">
					<div class="phoneHead">联系我们</div>
					<div class="pnoneCon"><img src="img/aa.phone.png"/>400-1234-678</div>
				</div>
				
			</div>
			<div class="product">
				<img src="img/product.jpg"/>
				<h2 class="proBrand">NOVELLA</h2>
				<h2 class="proTittle">取之自然&nbsp;&nbsp;用之安心</h2>
				<h2 class="pro_english">Novella fragrnce hair oil Take it and use it</h2>
					<div class="pro_outer clearfix">
						<div class="proD fl">
							<a href="third/goods?colStatus=1&goodsId=1">
								<img src="img/pro1.png" alt="油" class="pro1"/>
								<h4>红瓶</h4>
								<p>清爽防脱·富含杏子油</p>
							</a>
						</div>
						<div class="proD fl" id="proD">
							<a href="third/goods?colStatus=1&goodsId=2">
								<img src="img/pro2.png" alt="油" class="pro1"/>
								<h4>棕瓶</h4>
								<p>修复受损·富含榛子油</p>
							</a>
						</div>
						<div class="proD fl">
							<a href="third/goods?colStatus=1&goodsId=3">
								<img src="img/pro3.png" alt="油" class="pro1"/>
								<h4>蓝瓶</h4>
								<p>滋润保湿·富含鳄梨油</p>
							</a>
						</div>
					</div>
			</div>
			<div class="product2">
				<h2 class="product2_h2">NOVELLA</h2> 
				<p class="product2_p">深层滋润，顺滑亮泽</p>
				<div class="product2_div">Novella fragrnce hair oil deep moistening, smooth and shine</div>
				<div class="product2_content">
					<div id="product2">
						<img src="img/product_p2.png"/>
					</div>
					<div class="proText">
						<h3>香薰护发精油</h3>
						<h4>Aromatherapy essential oil</h4>
						<p class="proText_chinese">NOVELLA（那绯澜）护发小金瓶，可谓是NOVELLA的明星产品，俘获万众<br />日本妹纸的心♥可爱的瓶身，五种个性香氛：白檀香、龙涎香、花香、<br />黑莓香、柠檬香。随心所欲，自由选择，护发的同时还能享受香水的芬<br />芳！省下的香水费都够买好几瓶精油了，不让妹纸们为它疯狂都难！随<br />身携带，随时护发，处处留香！</p>
						<p class="proText_english">NOVELLA that Fei (rings) hair care little golden urn, is the star<br /> products of the NOVELLA, capture all Japanese girl's heart has a<br /> lovely bottle, five personality sweet atmosphere: sandalwood<br /> incense, ambergris, floral, blackberry aroma and lemon zest.<br /> Freewill, free choice, hair care can also enjoy the fragrance of<br /> perfume! You can buy several bottles of essential oil, not to make<br /> the girls crazy for it! Carry with you, protect hair at any time, <br />everywhere fragrant!</p>
						<a href="first/prod" class="ab_mo" >
							<div class="ab_inner">
								<div class="ab_outer">了解更多</div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="product2 product3 clearfix">
				<h2 class="product2_h2">NOVELLA</h2> 
				<p class="product2_p">护发精油 深度滋养 锁水保色</p>
				<div class="product2_div">Hair care essential oil deeply nourishes lock color</div>
				<div class="product3_outer clearfix">
					<div class="proD2 fl">
						<a href="#">
							<img src="img/product3_p1.png" class="proD2_pic"/>
							<div class="proD2_box">
									<h5>白檀香</h5>
									<p>愉快出行</p>
							</div>
						</a>
					</div>
					<div class="proD2 fl" id="pro3_mar">
						<a href="#">
							<img src="img/product3_p2.png" class="proD2_pic"/>
							<div class="proD2_box proD2_box2">
									<h5>花香型</h5>
									<p>蜜蜂相聚</p>
							</div>
						</a>
					</div>
					<div class="proD2 fl">
						<a href="#">
							<img src="img/product3_p3.png" class="proD2_pic"/>
							<div class="proD2_box proD2_box3">
									<h5>柠檬型</h5>
									<p>休闲放松</p>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="footer clearfix">
				<div class="footList clearfix">
					<div class="listLeft clearfix fl">
						<ul>
							<li class="footerLi"><span>选购及了解</span>
							<ul>
								<a href="first/mall"><li class="footer_firstLi">洗发水</li></a>
								<a href="first/mall"><li>沐浴露</li></a>
								<a href="first/mall"><li>精油</li></a>
								<a href="first/mall"><li>洗面奶</li></a>
							</ul>
							</li>
							<li class="footerLi"><span>关于我们</span>
								<ul>
									<a href="first/index/#skip"><li class="footer_firstLi">公司简介</li></a>
									<a href="jour"><li>新闻资讯</li></a>
									<a href="javascript:;"><li class="contactUs">联系我们</li></a>
								</ul>
							</li>
							<li class="footerLi"><span>选购平台</span>
								<ul>
									<a href="first/mall"><li class="footer_firstLi">网上商城</li></a>
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
							<img src="img/weixin1.png" class="footerPic"/>
							<p class="footerP1">微信服务号</p>
						</div>
						<div class="fl">
							<img src="img/weixin2.png" />
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
					<a href="#"><img src="img/returnTop.png" class="returnTop"/></a>
				</div>
				<div class="phoneUs">
					<div class="phoneHead">联系我们</div>
					<div class="pnoneCon"><img src="img/aa.phone.png"/>400-1234-678</div>
				</div>
			</div>
		
		
	</body>
</html>
