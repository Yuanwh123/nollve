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
				var data={};
				data.userId=userId;
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
					var tb = document.getElementById("account_table");
					var rows = tb.rows;
					var data="";
					for(var i=0;i<rows.length;i++){
						 for(var j=0;j<rows[i].cells.length;j++){
							 var cell = rows[i].cells[j];//获取某行下面的某个td元素
							 if(j==0){
								 data+=cell.firstChild.value+",";
								 //alert(cell.firstChild.value);
							 }
							 if(j==1){
								 data+="";
							 }
							 if(j==2){
								data+="";
							 }
							 if(j==3){
								 data+=cell.getElementsByTagName("span")[1].innerHTML+",";
								 //alert(cell.getElementsByTagName("span")[1].innerHTML);
							 }
							 if(j==4){
								 if(i==rows.length-1){
									 data+=cell.innerHTML;
								 }else{
									 data+=cell.innerHTML+",";
								 }
							 }
						 }
					}
					if(s==''){
						alert("你还没有选择任何内容！");
					}else{
						var Datas={};
						Datas.value=data;
						$.ajax({
							url: url+"goods/goodsCartDatas.do",
			            	data: Datas,
			                dataType: "json",
			                success:function(res){
			                	if(res.code == 200){
			                		window.location.href="../third/med?orderId="+s.substring(0,s.length-1);
			                	}else{
			                		alert(res.errMsg);
			                	}
			                },
			                error: function () {
			                    alert("网络错误");
			                }
						})
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
					list+='<td class="acc_row_goodsOnePrice">'+res.data[i].orderPrice/res.data[i].orderGoodsNum+'</td>';
					list+='<td class="acc_reduceAndAdd">';
					list+='<span class="acc_num_reduce">-</span><span class="acc_goodsNum">'+res.data[i].orderGoodsNum+'</span><span class="acc_num_add">+</span>';
					list+='</td>';
					list+='<td class="acc_row_total">'+res.data[i].orderPrice+'</td></tr>';
				}
				$(list).appendTo("#account_table");
		}