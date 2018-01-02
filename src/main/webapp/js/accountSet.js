var userId=0;
		var COOKIE_NAME = 'sys_em_username';
		var cookieName = $.cookie(COOKIE_NAME);
		function getUserId(){
			var data={};
			data.account=cookieName;
			$.ajax({
				url: url+"login/passport/GetUserId.do",
            	data: data,
                dataType: "json",
                async:false,
                success:function(res){
                	if(res.code ==200){
                		userId=res.data;
                	}
                },
                error:function(){}
			});
		}
			$(function(){
				getUserId();
				addList();
				delAddr();
				pred();
			});
			function addList(){
				var data={};
				data.userId=userId;
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
			}
			function pred(){
				$(".saveAddr").click(function(){
					var data={};
					var city = $("#city").val();
					var dCity = $(".dCity").val();
					var xxdz = $("#xxdz").val();
					var yzbm = $("#yzbm").val();
					var username = $("#username").val();
					var mobilePhone = $("#mobilePhone").val();
					var isChecked = $("#mRCheck").is(":checked");
					var flag =true;
					if(city==""){
						flag = false;
						alert("请填写地区");
					}
					data.sendaddrAddr=city;
					if(xxdz==""){
						flag = false;
						alert("请填写详细地址");
					}
					data.sendaddrArea=xxdz;
					if(yzbm==""){
						flag = false;
						alert("请填写邮政编码");
					}
					data.sendaddrZipcode=yzbm;
					if(username==""){
						flag = false;
						alert("请填写收货人");
					}
					data.sendaddrName=username;
					var reg=/^1\d{10}$/;
					if(mobilePhone==""||!(reg.test(mobilePhone))){
						flag = false;
						alert("请填写手机号或手机格式不正确");
					}
					data.sendaddrTel=mobilePhone;
					if(flag){
						if(isChecked){
							//选中默认地址
							data.sendaddrDefaultstatus=1;
						}else{
							//没有选中默认地址
							data.sendaddrDefaultstatus=0;
						}
						data.userid=userId;
						$.ajax({
							url: url+"goods/goodsInseAddr.do",
			            	data: data,
			                dataType: "json",
			                success:function(res){
			                	if(res.code = 200){
			                		alert(res.data);
			                		location.replace(location.href);
			                	}else{
			                		alert(res.data);
			                	}
			                },
			                error: function () {
			                    alert("网络错误");
			                }
						})
					}
				})
			}
			 //个人账户设置--点击删除按钮
			function delAddr(){
				$('.del').click(function(){
				   if(confirm('您确定要删除这条地址吗？')){
					   var id = $(this).parents('tr').children('td').eq(0).html();
					   var datas={};
					   datas.orderId=id;
					   $.ajax({
						   url: url+"goods/goodsDelAddr.do",
			            	data: datas,
			                dataType: "json",
			                async:false,
			                success:function(res){
			                	if(res.code ==200){
			                		 location.replace(location.href);
			                	}
			                },
			                error: function () {
			                    alert("网络错误");
			                }
					   });
				      //$(this).parents('tr').remove();
				   }
				})
			}
			function addrLists(res){
				var html="";
				for(var i=0;i<res.data.length;i++){
					html+= '<tr>';
					html+= '<td style="visibility:hidden;">'+res.data[i].sendaddrId+'</td>';
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
			