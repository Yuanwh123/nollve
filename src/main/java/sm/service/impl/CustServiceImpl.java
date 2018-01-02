package sm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sm.dao.NoveOrdersMapper;
import sm.pojo.NoveOrders;
import sm.service.CustService;

@Service("cureService")
@Transactional
public class CustServiceImpl implements CustService{
	@Autowired
	private NoveOrdersMapper noveOrderMapper;
	
	
	public List<NoveOrders> GoodsNoPayOrder(Integer userId) {
		List<NoveOrders> noveOrder = noveOrderMapper.selectNoPayUserId(userId);
		if(noveOrder!=null) {
			return noveOrder;
		}
		return null;
	}


	public List<NoveOrders> PayOrder(Integer userId) {
		List<NoveOrders> noveOrder = noveOrderMapper.selectPayUserId(userId);
		if(noveOrder!=null) {
			return noveOrder;
		}
		return null;
	}


	
	public List<NoveOrders> OverOrder(Integer userId) {
		List<NoveOrders> noveOrder = noveOrderMapper.selectNoPayUserId(userId);
		if(noveOrder!=null) {
			return noveOrder;
		}
		return null;
	}


	
	public int UpdateOrderStatus(String orderId) {
		NoveOrders noveOrders = new NoveOrders();
		noveOrders.setOrderId(orderId);
		noveOrders.setOrderStatus(8);
		int num = noveOrderMapper.updateByPrimaryKeySelective(noveOrders);
		if(num  == 1) {
			return num;
		}
		return 0;
	}

}
