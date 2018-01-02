package sm.service;

import sm.pojo.NoveBack;
import sm.pojo.NoveOrders;

public interface BackGoodService {
	NoveOrders backPagesOrderInf(String orderId);
	//退款第二步
	String backHandle(NoveBack back);
	//退款第三部
	NoveBack BuyHandle(String backId);
}
