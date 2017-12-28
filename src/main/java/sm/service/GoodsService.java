package sm.service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import sm.pojo.NoveOrders;

public interface GoodsService {

	//通过商品ID得到商品
	JSONObject getSelectResult(Integer goodsId);
	//加入购物车生成订单
	int InsertCart(Integer userId,String goodsId,Integer num,String spec,String price);
	//购物车列表
	List<NoveOrders> GoodsList(Integer userId);
}
