<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>卖家处理退货申请</title>
    <link rel="stylesheet" href="../css/mhwz.css" type="text/css">
    <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="../js/mhwz.js"></script>
	<script type="text/javascript" src="../js/jquery.cookie.js"></script>
	<script type="text/javascript" src="../js/url.js"></script>
	<script type="text/javascript" src="../js/back2.js"></script>
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
	<p class="retGoods_pos">您的位置：<a href="../first/index">首页</a> &gt; <a href="../second/mine">我的</a> &gt; <a href="../second/bought">已买到的宝贝</a> &gt; <span>退款</span></p>
	<div class="ret_pic">
		<img src="../img/reMonPic2.png"/>
	</div>
	<div class="ret_main clearfix">
		<div class="ret_mainLeft fl">
			<form  method="post" id="form1" enctype="multipart/form-data" action="../goods/backSellerHandle.do">
				<div class="ret_content">
				<!-- 
					<div class="return_goods clearfix">
						<span class="fl">退货商品：</span>
						<div class="return_goods_pic fl">
							<img src="../img/goods1.png"/>
						</div>
						<p>日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
						<h4 class="fl">商品属性：550ml洗发水</h4>
						<h5 class="fl">198.00</h5>
					</div>
					<div class="ret_server clearfix">
						<span class="fl">服务类型：</span>
						<div class="reRadioDiv fl">
							<input type="radio" name="reMon" id="reMon" value="reMoney" checked="checked"/><label for="reMon" class="reMonLab">退款</label>
							<input type="radio" name="reMon" id="reMonAndGoods" value="reMonAndGoods" /><label for="reMonAndGoods">退款退货</label>
						</div>
					</div>
					<div class="ret_money">
						<span>退款金额：</span>
						<input type="text" name="retMoney" id="retMoney"  />
					</div>
					<div class="ret_explain clearfix">
						<span class="fl">退款说明：</span>
						<textarea class="fl" name="retExplain" id="retExplain"  maxlength="200"></textarea>
					</div>
					<div class="ret_picture clearfix fl">
						<span class="fl">上传图片：</span>
						<div class="ret_sendPic fl">
							<input type="file" name="filed" id="file_upload" value="上传图片" multiple="multiple" accept="image/*" />
							<label for="file_upload">+</label>
						</div>
					</div>
					<div id="preview" class="fl"></div>
				<input type="button" value="确认" name="retSubmit" id="retSubmit" class="fl"/>
				 -->
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
