<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>买家退货</title>
    <link rel="stylesheet" href="../css/mhwz.css" type="text/css">
    <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="../js/mhwz.js"></script>
	<script type="text/javascript" src="../js/jquery.cookie.js"></script>
	<script type="text/javascript" src="../js/url.js"></script>
	<script type="text/javascript">
		var backId = GetQueryString("backId");
		
		$(function(){
			
		})
	</script>
</head>
<body>
	<div class="bg_div"></div>
<div class="gwTop">
    <div class="gwFlex2 clearfix">
        <div class="logo"><a href="../first/index"><img src="../img/index_logo.png"/></a></div>
        <div class="logoNav fl clearfix">
            <ul>
                <li class="clearfix"><a href="../first/index" >网站首页</a></li>
                <li class="clearfix"><a href="../first/prod">产品中心</a></li>
                <li class="clearfix"><a href="../first/mall" class="gw_firstA">网上商城</a>
                	<ol>
						<li><a href="../first/mall">首页</a></li>
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
<div class="retGoods">
	<p class="retGoods_pos">您的位置：<a href="../first/mall">首页</a> &gt; <a href="../second/mine">我的</a> &gt; <a href="../second/bought">已买到的宝贝</a> &gt; <span>退款</span></p>
	<div class="ret_pic">
		<img src="../img/reMonPic3.png"/>
	</div>
	<div class="ret_main clearfix">
		<div class="ret_mainLeft fl">
			<form  method="post">
				<div class="ret_content">
					<div class="return_goods2 clearfix">
						<div class="return_goods_pic2 fl">
							<img src="../img/goods1.png"/>
						</div>
						<p >日本NOVELLA那绯澜无硅油氨基酸滋润保湿洗发水550ml*</p>
						<ul class="clearfix">
							<li>订单编号：111592233490086154</li>
							<li>成交时间：2017-12-12</li>
							<li>单价：339</li><br />
						</ul>
						<ol class="clearfix">
							<li>退款编号：5575839509085461</li>
							<li>退款金额：339</li>
							<li>申请件数：1</li>
							<li>原因：7天无理由退款</li>
						</ol>
					</div>
					<div class="ret_money">
						<span>物流公司：*</span>
						<input type="text" name="wlCompany" id="wlCompany"  placeholder="请填写物流公司" onfocus="this.placeholder=''" onblur="this.placeholder='请填写物流公司'" />
					</div>
					<div class="ret_money">
						<span>物流单号：*</span>
						<input type="text" name="wlNumber" id="wlNumber"  placeholder="请填写物流单号" onfocus="this.placeholder=''" onblur="this.placeholder='请填写物流单号'" />
					</div>
					<div class="ret_money">
						<span>联系电话：*</span>
						<input type="text" name="contactPhone" id="contactPhone"   placeholder="请填写联系电话" onfocus="this.placeholder=''" onblur="this.placeholder='请填写联系电话'"/>
					</div>
					<div class="ret_explain clearfix ret_explain2">
						<span class="fl" id="label_reGoodsExp">退货说明：*</span>
						<textarea class="fl" name="retGoodsExp" id="retGoodsExp"  placeholder="请填写联系电话" onfocus="this.placeholder=''" onblur="this.placeholder='请填写联系电话'"></textarea>
					</div>
					<div class="ret_picture clearfix fl">
						<span class="fl">上传图片：*</span>
						<div class="ret_sendPic fl" id="ret_sendPic2">
							<input type="file" name="filed2" id="file_upload2" value="上传图片" multiple="multiple" accept="image/*" />
							<label for="file_upload2">+</label>
						</div>
					</div>
					<div id="preview" class="fl"></div>
				<input type="button" value="确认" name="buyerConf" id="buyerConf" class="fl"/>
				</div>
			</form>
			
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