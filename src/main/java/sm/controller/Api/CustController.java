package sm.controller.Api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sm.pojo.NoveOrders;
import sm.service.CustService;
import sm.utils.model.DefaultResultModel;

@Controller
@RequestMapping("/goods")
public class CustController {
	@Autowired
	private CustService custServiceImpl;
	
	
	/**
     * 全部订单
     *
     * @param userId   客户id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsNoPayOrder.do")
    @ResponseBody()
    public DefaultResultModel showGoodsOrderSure(Integer userId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	List<NoveOrders> j =custServiceImpl.GoodsNoPayOrder(userId);
    	int result = 0;
    	if(j !=null) {
    		result =200;
    	}
    	return resultModel.packageObject(result, j);
    }
    /**
     * 已买到的宝贝
     *
     * @param userId   客户id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsPayOrder.do")
    @ResponseBody()
    public DefaultResultModel showGoodsPayOrder(Integer userId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	List<NoveOrders> j =custServiceImpl.PayOrder(userId);
    	int result = 0;
    	if(j !=null) {
    		result =200;
    	}
    	return resultModel.packageObject(result, j);
    }
    /**
     * 已买到的宝贝
     *
     * @param userId   客户id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsOverOrder.do")
    @ResponseBody()
    public DefaultResultModel showGoodsOverOrder(Integer userId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	List<NoveOrders> j =custServiceImpl.OverOrder(userId);
    	int result = 0;
    	if(j !=null) {
    		result =200;
    	}
    	return resultModel.packageObject(result, j);
    }
    /**
     * 更新订单
     * @param orderId   客户id
     */
    @RequestMapping("/goodsUpdateOrder.do")
    @ResponseBody()
    public DefaultResultModel showGoodsUpdateOrder(String orderId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int status = custServiceImpl.UpdateOrderStatus(orderId);
    	int result = 0;
    	if(status == 1) {
    		result =200;
    	}
    	return resultModel.packageObject(result, "确认收货成功");
    }
   
}
