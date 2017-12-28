package sm.service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import sm.pojo.NoveOrders;
import sm.pojo.NoveSendaddr;

public interface GoodsService {

	//ͨ����ƷID�õ���Ʒ
	JSONObject getSelectResult(Integer goodsId);
	//���빺�ﳵ���ɶ���
	String InsertCart(Integer userId,String goodsId,Integer num,String spec,String price,String pic);
	//���ﳵ�б�
	List<NoveOrders> GoodsList(Integer userId);
	//ȷ�϶����б�
	List<NoveOrders> GoodsOrderSure(String orderId);
	//�ջ���ַ�б� 
	List<NoveSendaddr> GoodsAddr(Integer userId);
}
