package sm.service.impl;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import sm.dao.NoveGoodsMapper;
import sm.dao.NoveOrdersMapper;
import sm.dao.NoveSendaddrMapper;
import sm.dao.NoveUserMapper;
import sm.pojo.NoveGoods;
import sm.pojo.NoveOrders;
import sm.pojo.NoveSendaddr;
import sm.service.GoodsService;

@Service("goodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	private NoveGoodsMapper noveGoodsMapper;
	@Autowired
	private NoveOrdersMapper noveOrderMapper;
	@Autowired
	private NoveSendaddrMapper noveSendaddrMapper;
	@Autowired
	private NoveUserMapper noveUserMapper;
	
	private static SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	public JSONObject getSelectResult(Integer goodsId) {
		List<NoveGoods> noveGoods = noveGoodsMapper.selectLeft(goodsId);
		JSONObject goods_list=null;
		if(noveGoods.size()>0) {
			goods_list =new JSONObject();
			goods_list.put("goodsName",noveGoods.get(0).getGoodsName());
			String pic =noveGoods.get(0).getGoodsPic();
			String[] list=pic.split(",");
			JSONObject goods_pic = new JSONObject();
			JSONArray goods_ary = new JSONArray();
			for(int i=0;i<list.length;i++) {
				goods_pic.put("small"+i, "http://ob9xcklov.bkt.clouddn.com/"+list[i]);
			}
			goods_ary.add(goods_pic);
			goods_list.put("goodsPic",goods_ary);
			goods_list.put("goodsArea", noveGoods.get(0).getGoodsArea());
			goods_list.put("goodsShowstatus",noveGoods.get(0).getGoodsShowstatus());
			goods_list.put("goodsBrand", noveGoods.get(0).getGoodsBrand());
			goods_list.put("goodsUse", noveGoods.get(0).getGoodsUse());
			goods_list.put("goodsDescript", noveGoods.get(0).getGoodsDescript());
			JSONObject goods_price = new JSONObject();
			JSONObject goods_size = new JSONObject();
			JSONArray goods_ary1 = new JSONArray();
			JSONArray goods_ary2 = new JSONArray();
			for(int i=0;i<noveGoods.size();i++) {
				goods_price.put("price"+i, noveGoods.get(i).getGoodsPrice());
				goods_size.put("size"+i,noveGoods.get(i).getGoodsSize());
			}
			goods_ary1.add(goods_price);
			goods_ary2.add(goods_size);
			goods_list.put("goodsPrice", goods_ary1);
			goods_list.put("goodsSize", goods_ary2);
			
			
		}else {
			return null;
		}
		return goods_list;
	}

	//加入购物车
	public String InsertCart(Integer userId,String goodsId, Integer num, String spec, String price
			,String pic,Integer GId) {
		NoveOrders noveOrder =new NoveOrders();
		noveOrder.setOrderId(UUID.randomUUID()+"");
		noveOrder.setOrderPic(pic);
		String totalPrice = (num * Integer.parseInt(price))+"";
		noveOrder.setOrderPrice(Double.parseDouble(totalPrice));
		//1为加入购物车 2为订单结束
		noveOrder.setOrderStatus(1);
		try {
			noveOrder.setOrderDate(new Timestamp(System.currentTimeMillis()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		noveOrder.setOrderSpec(spec);
		noveOrder.setOrderGoodsInf(goodsId);
		noveOrder.setUserid(userId);
		noveOrder.setOrderGoodsId(GId);
		noveOrder.setOrderGoodsNum(""+num);
		int orderId = noveOrderMapper.insert(noveOrder);
		if(orderId==1) {
			
			return noveOrder.getOrderId(); 
		}
		return "";
	}
	//立即购买
		public String InsertCartBuy(Integer userId,String goodsId, Integer num, String spec, String price
				,String pic,Integer GId) {
			NoveOrders noveOrder =new NoveOrders();
			noveOrder.setOrderId(UUID.randomUUID()+"");
			noveOrder.setOrderPic(pic);
			String totalPrice = (num * Integer.parseInt(price))+"";
			noveOrder.setOrderPrice(Double.parseDouble(totalPrice));
			//1为加入购物车 2为立即购买 3为收藏
			noveOrder.setOrderStatus(2);
			try {
				noveOrder.setOrderDate(new Timestamp(System.currentTimeMillis()));
			} catch (Exception e) {
				e.printStackTrace();
			}
			noveOrder.setOrderSpec(spec);
			noveOrder.setOrderGoodsInf(goodsId);
			noveOrder.setUserid(userId);
			noveOrder.setOrderGoodsId(GId);
			noveOrder.setOrderGoodsNum(""+num);
			
			int orderId = noveOrderMapper.insert(noveOrder);
			if(orderId==1) {
				
				return noveOrder.getOrderId(); 
			}
			return "";
		}
		//收藏
		public String InsertCartColl(Integer userId,String goodsId, Integer num, String spec, String price
				,String pic,Integer GId) {
			NoveOrders noveOrder =new NoveOrders();
			noveOrder.setOrderId(UUID.randomUUID()+"");
			noveOrder.setOrderPic(pic);
			String totalPrice = (num * Integer.parseInt(price))+"";
			noveOrder.setOrderPrice(Double.parseDouble(totalPrice));
			//1为加入购物车 2为订单结束
			noveOrder.setOrderStatus(3);
			try {
				noveOrder.setOrderDate(new Timestamp(System.currentTimeMillis()));
			} catch (Exception e) {
				e.printStackTrace();
			}
			noveOrder.setOrderSpec(spec);
			noveOrder.setOrderGoodsInf(goodsId);
			noveOrder.setUserid(userId);
			noveOrder.setOrderGoodsId(GId);
			noveOrder.setOrderGoodsNum(""+num);
			int orderId = noveOrderMapper.insert(noveOrder);
			if(orderId==1) {
				
				return noveOrder.getOrderId(); 
			}
			return "";
		}
	
	public List<NoveOrders> GoodsList(Integer userId) {
		List<NoveOrders> noveOrder = noveOrderMapper.selectByUserId(userId);
		if(noveOrder!=null) {
			return noveOrder;
		}
		return null;
	}

	
	public List<NoveOrders> GoodsOrderSure(String orderId) {
		List<NoveOrders> noveOrders=new ArrayList<NoveOrders>();
		if(orderId.indexOf(",")>=0) {
			String[] orders = orderId.split(",");
			for(int i=0;i<orders.length;i++) {
				noveOrders.add(noveOrderMapper.selectByPrimaryKey(orders[i]));
			}
		}else {
			noveOrders.add(noveOrderMapper.selectByPrimaryKey(orderId));
		}
		return noveOrders;
	}

	@Override
	public List<NoveSendaddr> GoodsAddr(Integer userId) {
		List<NoveSendaddr> noveSend =noveSendaddrMapper.selectAddList(userId);
		if(noveSend != null) {
			return noveSend;
		}
		return null;
	}

	@Override
	public int CartNum(Integer userId) {
		List<NoveOrders> noveOrder = noveOrderMapper.selectByUserId(userId);
		if(noveOrder.size()!=0) {
			return noveOrder.size();
		}
		return 0;
	}

	@Override
	public int updateCartDatas(String value) {
		String[] val = value.split(",");
		try {
			for(int i=0;i<val.length;i++) {
				if(i%3==0) {
					NoveOrders noveOrder =new NoveOrders();
					noveOrder.setOrderId(val[i]);
					noveOrder.setOrderGoodsNum(val[i+1]);
					noveOrder.setOrderPrice(Double.parseDouble(val[i+2]));
					noveOrderMapper.updateByPrimaryKeySelective(noveOrder);
				}
			}
			return 200;
		}catch(Exception e) {
			return -704;
		}
	}

	@Override
	public List<NoveOrders> ColNum(Integer userId) {
		List<NoveOrders> noveOrder = noveOrderMapper.selectColByUserId(userId);
		if(noveOrder!=null) {
			return noveOrder;
		}
		return null;
	}

	
	public int GoodsDelAddr(Integer userId) {
		int result =noveSendaddrMapper.deleteByPrimaryKey(userId);
		if(result == 1) {
			return 200;
		}
		return 0;
	}

	@Override
	public int GoodsInseAddr(NoveSendaddr obj) {
		NoveSendaddr noveSend= new NoveSendaddr();
		if(obj !=null) {
			int res =0;
			if(obj.getSendaddrDefaultstatus()==1) {
				res = noveSendaddrMapper.updateColStatus();
			}
			try {
					noveSend.setSendaddrAddr(obj.getSendaddrAddr());
					noveSend.setUserid(obj.getUserid());
					noveSend.setSendaddrArea(obj.getSendaddrArea());
					noveSend.setSendaddrDefaultstatus(obj.getSendaddrDefaultstatus());
					noveSend.setSendaddrName(obj.getSendaddrName());
					noveSend.setSendaddrTel(obj.getSendaddrTel());
					noveSend.setSendaddrZipcode(obj.getSendaddrZipcode());
					noveSendaddrMapper.insertSelective(noveSend);
					return 200;
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -706;
	}
	

}
