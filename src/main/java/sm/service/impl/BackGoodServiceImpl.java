package sm.service.impl;

import java.sql.Timestamp;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sm.dao.NoveBackMapper;
import sm.dao.NoveOrdersMapper;
import sm.pojo.NoveBack;
import sm.pojo.NoveOrders;
import sm.service.BackGoodService;

@Service("BackGoodService")
public class BackGoodServiceImpl implements BackGoodService{
	@Autowired
	private NoveOrdersMapper noveOrderMapper;
	@Autowired
	private NoveBackMapper noveBackMapper;
	
	public NoveOrders backPagesOrderInf(String orderId) {
		NoveOrders orders = noveOrderMapper.selectByPrimaryKey(orderId);
		if(orders !=null) {
			return orders;
		}
		return null;
	}

	@Override
	public String backHandle(NoveBack back) {
		String value ="";
		NoveBack noveBack =back;
		noveBack.setBackId(UUID.randomUUID()+"");
		noveBack.setBackCreateTime(new Timestamp(System.currentTimeMillis()));
		int result =noveBackMapper.insertSelective(noveBack);
		if(result ==1) {
			value = noveBack.getBackId();
		}
		return value;
	}

	@Override
	public NoveBack BuyHandle(String backId) {
//		NoveBack noveBack = 
		return null;
	}
	
	
}
