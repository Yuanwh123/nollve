<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>账户设置</title>
    	<link rel="stylesheet" href="../css/mhwz.css" type="text/css">
    	<script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="../js/mhwz.js"></script>
		<script type="text/javascript" src="../js/YMDClass.js"></script>
		<script type="text/javascript" src="../js/cityJson.js"></script>
		<script type="text/javascript" src="../js/citySet.js"></script>
		<script type="text/javascript" src="../js/Popt.js"></script>
		<script type="text/javascript" src="../js/distpicker.data.js"></script>
		<script type="text/javascript" src="../js/distpicker.js"></script>
		<script type="text/javascript" src="../js/jquery.cookie.js"></script>
		<script type="text/javascript" src="../js/url.js"></script>
		<script type="text/javascript">
			$(function(){
				var data={};
				data.userId=1;
				$.ajax({
					url: url+"goods/goodsAddr.do",
	            	data: data,
	                dataType: "json",
	                async:false,
	                success:function(res){
	                	addrLists(res);
	                },
	                error: function () {
	                    alert("网络错误");
	                }
				})
			});
			function addrLists(res){
				var html="";
				for(var i=0;i<res.data.length;i++){
					html+= '<tr>';
					html+= '<td>'+res.data[i].sendaddrName+'</td>';
					html+= '<td>'+res.data[i].sendaddrArea+'</td>';
					html+= '<td>'+res.data[i].sendaddrAddr+'</td>';
					html+= '<td>'+res.data[i].sendaddrZipcode+'</td>';
					html+= '<td>'+res.data[i].sendaddrTel+'</td>';
					html+= '<td class="delOrxiu"><span class="del">删除</span></td>';
					html+= '</tr>';
				}
				$(html).appendTo(".addLists");
			}
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
			<a href="我的.html" class="userN"></a><span>丨</span><a href="#" class="quit">退出</a>
		</div>
    </div>
</div>
<div class="adContent">
    <ul class="adSide">
        <li id="adSide_red">全部功能</li>
        <li><a href="cart">我的购物车</a></li>
        <li class=""><a href="bought" >已买到的宝贝</a></li>
        <li><a href="collection" >我的收藏</a></li>
        <li><a href="comment">评价管理</a></li>
        <li>
            <a href="" id="owned_actived">账户设置</a>
            <ul class="liPanel">
                <li><a href="javaScript:;">安全设置</a></li>
                <li><a href="javaScript:;">个人资料</a></li>
                <li><a href="javaScript:;">收货地址</a></li>
                <li><a href="javaScript:;">支付宝绑定</a></li>
            </ul>
        </li>
    </ul>
    <div class="adPanelContent">
    	<!--安全设置-->
		<div class="adPList  securitySet">
            <h3>您的基础信息</h3>
            <div class="jcInfo">
                <p><i>会员名</i><span>sj</span><a></a></p>
                <p><i class="jcInfo_i">绑定手机:</i><span class="phoneNum">88362193732</span><a><span>修改手机</span></a></p>
            </div>
            <h3>您的安全服务</h3>
            <ul>
            	<li>
                    <div>
                        <img src="img/duigou_07.png"><p>已设置</p>
                    </div>
                    <span>登陆密码</span>
                    <p>
                        安全性高的密码可以使账号更安全。
                        建议您定期更换密码。且设置一个包含数字和字母，
                        并长度超过6位以上的密码。
                    </p>
                    <a>修改</a>
               </li>
                <li>
                    <div>
                        <img src="img/duigou_07.png"><p>已绑定</p>
                    </div>
                    <span>绑定手机</span>
                    <p>
                        绑定手机后，您即可享受淘宝丰富的手机服务，
                        如手机找回密码等。
                    </p>
                    <a>修改</a>
                </li>
            </ul>
        </div>
       
        <!--个人资料-->
		<div class="adPList perList">
        	<div class="perInfo_head" id="perInfo_head">
        		<span>基本资料</span>
        		<span>头像资料</span>
        	</div>
        	<form action="#" method="post">
        		<div class="perInfoMain">
	        		<p id="perInfoMainP">亲爱的 <span id="perSpan">sean_full</span>，填写真是的资料，有助于好友找到你哦。</p>
	        		<i class="fl">当前头像：</i><div class="perHead fl"><img src="img/comment_head2.png"/></div><br />
	        		<div class="perName">
	        			<i>* 昵称：</i><input type="text" name="perName" id="perName" value="sean_full"/>
	        			<div class="perNotice">*昵称填写须知：与淘宝业务或卖家品牌冲突的昵称，淘宝将有可能回收</div>
	        		</div>
	        		<div class="perRealName">
	        			<i>真实姓名：</i><input type="text" name="perRealName" id="perRealName" value="s******n"/>
	        		</div>
	        		<div class="perSex">
	        			<i>* 性别：</i><input type="radio" name="perSex" id="perSex1" value="1"/><label for="perSex" id="perM_label">男</label>
	        			<input type="radio" name="perSex" id="perSex0" value="0"  checked="checked"/><label for="perSex0">女</label>
	        		</div>
	        		<div class="perBirthday">
	        			<i>生日：</i> <select id="perBir_select" name="year1"></select><select name="month1"></select><select name="day1"></select>
	        			<em>(出生年份为保密)</em>
	        			<select name="xingzuo">
	        				<option value="baiyang">白羊座</option><option value="jinniu">金牛座</option><option value="shuangzi">双子座</option>
	        				<option value="juxie">巨蟹座</option><option value="shizi">狮子座</option><option value="chunv">处女座</option>
	        				<option value="tiancheng">天秤座</option><option value="tianxie">天蝎座</option><option value="sheshou">射手座</option>
	        				<option value="mojie">摩羯座</option><option value="shuiping">水瓶座</option><option value="shuangyu">双鱼座</option>
	        			</select>
	        		</div>
	        		<div class="perAdd clearfix">
	        			<i class="fl">居住地：</i> 
	        			<div data-toggle="distpicker" id="distpicker" class="fl">
						  <select data-province="---- 选择省 ----" name="prov1"></select>
						  <select data-city="---- 选择市 ----" name="city1"></select>
						  <select data-district="---- 选择区 ----" name="district1"></select>
						</div>

	        		</div>
	        		<div class="perTown clearfix">
	        			<i class="fl">家乡：</i>
	        			<div data-toggle="distpicker" id="distpicker2" class="fl">
						  <select data-province="---- 选择省 ----" name="prov2"></select>
						  <select data-city="---- 选择市 ----" name="city2"></select>
						  <select data-district="---- 选择区 ----" name="district2"></select>
						</div>
	        		</div>
	        		<input type="submit" value="保存" name="perSave" id="perSave"/>
	        	</div>
        		
        	</form>
        	
        </div>
        <!--收货地址-->
		<div class="adPList addListWrite">
            <h2>收货地址</h2>
            <p><span>新增收货地址 </span><span>电话号码、手机号码选填一项，其余均为必填项</span></p>
            <div class="addressWrite">
                <form>
                    <div>
                        <label>所在地区</label>
                        <select class="province">
                            <option>中国大陆</option>
                        </select>
                        <input type="text" id="city" name="add" placeholder="省--市--区" class="addressWrite_add" onfocus="this.placeholder=''" onblur="this.placeholder='省--市--区'"/>
                    </div>
                    <div><label>所在地区</label><span class="yeDes">*</span><textarea></textarea></div>
                    <div><label>详细地址</label><span class="yeDes">*</span><input type="text" name="xxdz"/></div>
                    <div><label>邮政编码 </label><input type="text" name="yzbm"/></div>
                    <div class="uN"><label>收货人姓名</label><span class="yeDes">*</span><input type="text" name="username"/></div>
                    <div><label>手机号</label><span class="yeDes" id="yeDes">*</span><input type="text" name="mobilePhone"/></div>
                    <div><input type="checkbox" name="mRAddress" id="mRCheck"/><label for="mRCheck">设默认地址</label></div>
                    <input type="button" value="保存">
                </form>
            </div>
            <div class="addList">
                <table class="addLists">
                    <tr >
                        <td>收货人</td>
                        <td>所在地址</td>
                        <td>详细地址</td>
                        <td>邮编</td>
                        <td>手机</td>
                        <td>操作</td>
                    </tr>
                    <!-- 
                    <tr>
                        <td>刘欠</td>
                        <td>中国广州市华南区</td>
                        <td>广州市天河区华南理工图书馆</td>
                        <td>511000</td>
                        <td>18888855441</td>
                        <td class="delOrxiu"><span class="del">删除</span></td>
                    </tr>
                     -->
                </table>
            </div>
        </div>
        <!--支付宝绑定设置-->
        <div class="adPList payBind">
            <h2>支付宝绑定</h2>
            <form  method="post" id="zfbForm">
            	<label for="uName">姓名：</label><input type="type" name="uName" id="uName" value="" /><br />
            	<label for="zfbAcc">支付宝账号：</label><input type="type" name="zfbAcc" id="zfbAcc" value="" /><br />
            	<input type="button" value="确认" id="zfbConfirm"/>
            </form>
            <!--<ul class="puList">
                <li><i>账户类型</i><span>个人账户</span></li>
                <li><i>实名认证</i><span>刘氏|<strong class="idSecret">495496859698766676</strong></span><a href="身份认证.html" target="_blank">查看</a></li>
            </ul>-->
        </div>
        <!--支付宝绑定成功-->
        <div class="adPList payBind">
            <h2>支付宝绑定设置</h2>
            <div class="bindUser">
                <div class="bupic"><img src="img/duigou-bac_03.png"></div>
                <div class="bindDes">
                    <div>
                        <p>已绑定支付宝账户：<span>sea****n@sina.com</span></p>
                    </div>
                </div>
            </div>
            <!--<ul class="puList">
                <li><i>账户类型</i><span>个人账户</span></li>
                <li><i>实名认证</i><span>刘氏|<strong class="idSecret">495496859698766676</strong></span><a href="身份认证.html" target="_blank">查看</a></li>
            </ul>-->
        </div>
    </div>
</div>
<div class="footer clearfix">
				<div class="footList clearfix">
					<div class="listLeft clearfix fl">
						<ul>
							<li class="footerLi"><span>选购及了解</span>
							<ul>
								<a href="网上商城.html"><li class="footer_firstLi">洗发水</li></a>
								<a href="网上商城.html"><li>沐浴露</li></a>
								<a href="网上商城.html"><li>精油</li></a>
								<a href="网上商城.html"><li>洗面奶</li></a>
							</ul>
							</li>
							<li class="footerLi"><span>关于我们</span>
								<ul>
									<a href="index.html#skip"><li class="footer_firstLi">公司简介</li></a>
									<a href="新闻中心.html"><li>新闻资讯</li></a>
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
