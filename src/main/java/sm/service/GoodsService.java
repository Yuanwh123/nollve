package sm.service;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import sm.pojo.NoveOrders;
import sm.pojo.NoveSendaddr;

public interface GoodsService {

	//ͨ����ƷID�õ���Ʒ
	JSONObject getSelectResult(Integer goodsId);
	//���빺�ﳵ���ɶ���
	String InsertCart(Integer userId,String goodsId,Integer num,String spec,String price,String pic,Integer FId);
	//��������
	String InsertCartBuy(Integer userId,String goodsId,Integer num,String spec,String price,String pic,Integer FId);
	//�ղ�
	String InsertCartColl(Integer userId,String goodsId,Integer num,String spec,String price,String pic,Integer FId);
	//���ﳵ�б�
	List<NoveOrders> GoodsList(Integer userId);
	//ȷ�϶����б�
	List<NoveOrders> GoodsOrderSure(String orderId);
	//���¹��ﳵ�б�
	int updateCartDatas(String value);
	//�ջ���ַ�б� 
	List<NoveSendaddr> GoodsAddr(Integer userId);
	//�����ջ���ַ
	int GoodsInseAddr(NoveSendaddr obj);
	//ɾ���ջ���ַ
	int  GoodsDelAddr(Integer userId);
	//���ﳵ����
	int CartNum(Integer userId);
	//��ȡ�ղ��б�
	List<NoveOrders> ColNum(Integer userId);
}
