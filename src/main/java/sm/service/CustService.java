package sm.service;

import java.util.List;

import sm.pojo.NoveOrders;

public interface CustService {
	//全部订单
	List<NoveOrders> GoodsNoPayOrder(Integer userId);
	//已购买到的宝贝
	List<NoveOrders> PayOrder(Integer userId);
	//所有的订单
	List<NoveOrders> OverOrder(Integer userId);
	//确认收货
	int UpdateOrderStatus(String orderId);
}	
