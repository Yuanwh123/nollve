package sm.service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import sm.pojo.NoveOrders;
import sm.pojo.NoveSendaddr;

public interface GoodsService {

	//通过商品ID得到商品
	JSONObject getSelectResult(Integer goodsId);
	//加入购物车生成订单
	String InsertCart(Integer userId,String goodsId,Integer num,String spec,String price,String pic,Integer FId);
	//立即购买
	String InsertCartBuy(Integer userId,String goodsId,Integer num,String spec,String price,String pic,Integer FId);
	//收藏
	String InsertCartColl(Integer userId,String goodsId,Integer num,String spec,String price,String pic,Integer FId);
	//购物车列表
	List<NoveOrders> GoodsList(Integer userId);
	//确认订单列表
	List<NoveOrders> GoodsOrderSure(String orderId);
	//更新购物车列表
	int updateCartDatas(String value);
	//收货地址列表 
	List<NoveSendaddr> GoodsAddr(Integer userId);
	//新增收货地址
	int GoodsInseAddr(NoveSendaddr obj);
	//删除收货地址
	int  GoodsDelAddr(Integer userId);
	//购物车数量
	int CartNum(Integer userId);
	//获取收藏列表
	List<NoveOrders> ColNum(Integer userId);
}
