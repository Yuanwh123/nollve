package sm.service;

import sm.pojo.NoveBack;
import sm.pojo.NoveOrders;

public interface BackGoodService {
	NoveOrders backPagesOrderInf(String orderId);
	//�˿�ڶ���
	String backHandle(NoveBack back);
	//�˿������
	NoveBack BuyHandle(String backId);
}
