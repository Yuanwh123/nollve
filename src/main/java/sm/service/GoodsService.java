package sm.service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import sm.pojo.NoveOrders;

public interface GoodsService {

	//ͨ����ƷID�õ���Ʒ
	JSONObject getSelectResult(Integer goodsId);
	//���빺�ﳵ���ɶ���
	int InsertCart(Integer userId,String goodsId,Integer num,String spec,String price);
	//���ﳵ�б�
	List<NoveOrders> GoodsList(Integer userId);
}
