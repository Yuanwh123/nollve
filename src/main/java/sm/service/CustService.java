package sm.service;

import java.util.List;

import sm.pojo.NoveOrders;

public interface CustService {
	//ȫ������
	List<NoveOrders> GoodsNoPayOrder(Integer userId);
	//�ѹ��򵽵ı���
	List<NoveOrders> PayOrder(Integer userId);
	//���еĶ���
	List<NoveOrders> OverOrder(Integer userId);
	//ȷ���ջ�
	int UpdateOrderStatus(String orderId);
}	
