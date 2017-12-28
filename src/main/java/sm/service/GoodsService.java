package sm.service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import sm.pojo.NoveOrders;
import sm.pojo.NoveSendaddr;

public interface GoodsService {

	//通过商品ID得到商品
	JSONObject getSelectResult(Integer goodsId);
	//加入购物车生成订单
	String InsertCart(Integer userId,String goodsId,Integer num,String spec,String price,String pic);
	//购物车列表
	List<NoveOrders> GoodsList(Integer userId);
	//确认订单列表
	List<NoveOrders> GoodsOrderSure(String orderId);
	//收货地址列表 
	List<NoveSendaddr> GoodsAddr(Integer userId);
}
