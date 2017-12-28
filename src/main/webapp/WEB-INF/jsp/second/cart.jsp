<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>购物车</title>
		<link rel="stylesheet" href="../css/mhwz.css" />
		<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/mhwz.js"></script>
		<script type="text/javascript" src="../js/url.js"></script>
		<script type="text/javascript">
			$(function(){
				var data={};
				data.userId=1;
				$.ajax({
					url: url+"goods/goodsLists.do",
	            	data: data,
	                dataType: "json",
	                async:false, 
	                success:function(res){
	                	if(res.code == 200){
	                		list(res);
	                	}
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				})
				settlement();
			});
			//结算
			function settlement(){
				$("#settlement").click(function(){
					var obj=document.getElementsByName('checkA2');
					var s='';
					for(var i=0; i<obj.length; i++){
						if(obj[i].checked)
						{
							s+=obj[i].value+','
						}
					}
					if(s==''){
						alert("你还没有选择任何内容！");
					}else{
						window.location.href="../third/med?orderId="+s.substring(0,s.length-1);
					}
				})
			}
			function list(res){
				var account_table = document.getElementById("account_table");
				var list ="";
				for(var i=0;i<res.data.length;i++){
					list+='<tr class="acc_firstRow">';
					list+=	'<td class="clearfix">';
					list+='<input type="checkbox" name="checkA2" id="checkA2" value="'+res.data[i].orderId+'" class="checkAll fl" checked="checked"/>';
					list+='<div class="acc_g_boxLeft fl">';
					list+='<img src="'+res.data[i].orderPic+'"/>';
					list+='</div>';
					list+='<p class="acc_goods_des fl">'+res.data[i].orderGoodsInf+'</p>';
					list+='</td>';
					list+='<td>商品属性：'+res.data[i].orderSpec+'ml洗发水</td>';
					list+='<td class="acc_row_goodsOnePrice">'+res.data[i].orderPrice+'</td>';
					list+='<td class="acc_reduceAndAdd">';
					list+='<span class="acc_num_reduce">-</span><span class="acc_goodsNum">'+res.data[i].orderGoodsNum+'</span><span class="acc_num_add">+</span>';
					list+='</td>';
					list+='<td class="acc_row_total">'+res.data[i].orderPrice+'</td></tr>';

				}
				$(list).appendTo("#account_table");
		}
		</script>
	</head>
	<body>
		<div class="gwTop">
			<div class="gwFlex2 clearfix">
				<div class="logo"><img src="../img/index_logo.png"/></div>
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
				<div class="land fr">
					<a href="#">注册</a> <span>丨</span><a href="#">登录</a>
				</div>
			</div>
		</div>
		<div class="accountant">
			<div class="accountant_head clearfix">
				<div class="search_content clearfix">
					<input type="text" name="accountant_search" id="accountant_search" value="" /><button>搜索</button>
				</div>
				<h4>全部商品</h4>
			</div>
			<div class="accountantH">
				<!--<div class="checkbox_bg checkBox_top check_all">--><input type="checkbox" name="checkA1" id="checkA1" value=""  class="checkAll"/> <label for="checkA1">全选</label>
				<span>商品信息</span>
			</div>
			
			<table border="0" cellspacing="0" cellpadding="0" class="account_table" id="account_table">
				 <!-- 
				<tr class="acc_firstRow">
					<td class="clearfix">
						<input type="checkbox" name="checkA2" id="checkA2" value="" class="checkAll fl" checked="checked"/>
						<div class="acc_g_boxLeft fl">
							<img src="../img/goods1.png"/>
						</div>
						<p class="acc_goods_des fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
					</td>
					<td>商品属性：550ml洗发水</td>
					<td class="acc_row_goodsOnePrice">198.00</td>
					<td class="acc_reduceAndAdd">
						<span class="acc_num_reduce">-</span><span class="acc_goodsNum">1</span><span class="acc_num_add">+</span>
					</td>
					<td class="acc_row_total">198.00</td>
				</tr>
				<tr class="acc_firstRow">
					<td class="clearfix">
						<input type="checkbox" name="checkA2" id="checkA2" value="" class="checkAll fl" checked="checked" />
						<div class="acc_g_boxLeft fl">
							<div class="acc_g_boxBor">
								<img src="../img/goods1.png"/>
							</div>
						</div>
						<p class="acc_goods_des fl">日本进口NOVELLA那绯澜氨基酸无硅油修护套装洗发水护发素550ml*</p>
					</td>
					<td>商品属性：550ml洗发水</td>
					<td class="acc_row_goodsOnePrice">198.00</td>
					<td class="acc_reduceAndAdd">
						<span class="acc_num_reduce">-</span><span class="acc_goodsNum">1</span><span class="acc_num_add">+</span>
					</td>
					<td class="acc_row_total">198.00</td>
				</tr>
				 -->
			</table>
			 
			<div class="accountLine">
				<input type="checkbox" name="checkA3" id="checkA3" value="" /> <label for="checkA3">全选</label>
				<div class="fr"><button id="settlement" style="cursor:pointer;">结算</button></div>
				<div class="fr">
					<span class="acc_span1">已购商品<i class="checkedGoods">1</i>件</span>
					<span>合计（不含运费）：<i class="checkedPrice">198.00</i></span>
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
</html>
