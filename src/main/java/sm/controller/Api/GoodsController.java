package sm.controller.Api;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
/**
 * 通行证相关视图控制器
 * Created by ywh on 2017/12/20.
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import sm.pojo.NoveOrders;
import sm.pojo.NoveSendaddr;
import sm.service.GoodsService;
import sm.utils.model.DefaultResultModel;
@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Autowired
	private GoodsService goodsServiceImpl;
	
	
	/**
     * 商品详情接口
     *
     * @param goodsId   商品编号
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsDetail.do")
    @ResponseBody()
    public DefaultResultModel showGoodsDetail(HttpServletResponse resp,HttpServletRequest request,HttpSession session, Integer goodsId)
    	throws IOException,ServletException
    {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	JSONObject noveGoods = goodsServiceImpl.getSelectResult(goodsId);
    	int result = 0;
    	if(noveGoods !=null){
    		result = 1;
    	}	
        return resultModel.packageObject(result, noveGoods);
    }
    /**
     * 加入购物车
     *
     * @param gooodsInf   商品信息
     * @param num   商品数量
     * @param spec   商品规格
     * @param price   商品价格
     * @param pic	商品图片
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsCart.do")
    @ResponseBody()
    public DefaultResultModel showGoodsCart(Integer userId,String goodsInf,Integer num,String spec,String price,String pic) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	String value = goodsServiceImpl.InsertCart(userId,goodsInf,num,spec,price,pic);
    	int numb =-702;
    	if(value != "") {
    		numb=200;
    	}
    	return resultModel.packageObject(numb,value);
    }
    /**
     * 购物车列表
     *
     * @param userId   用户id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsLists.do")
    @ResponseBody()
    public DefaultResultModel showGoodsList(Integer userId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	List<NoveOrders> result = goodsServiceImpl.GoodsList(userId);
    	int num = 0;
    	if(result !=null) {
    		num = 1;
    	}
    	return resultModel.packageObject(num, result);
    }
    /**
     * 确认订单信息
     *
     * @param orderId   订单id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsOrderSure.do")
    @ResponseBody()
    public DefaultResultModel showGoodsOrderSure(String orderId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	List<NoveOrders> j =goodsServiceImpl.GoodsOrderSure(orderId);
    	int result = 0;
    	if(j !=null) {
    		result =200;
    	}
    	return resultModel.packageObject(result, j);
    }
    /**
     * 收货地址列表
     *
     * @param userId   订单id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsAddr.do")
    @ResponseBody()
    public DefaultResultModel showGoodsAddr(Integer userId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	List<NoveSendaddr> noveSendaddr  = goodsServiceImpl.GoodsAddr(userId);
    	int result = -703;
    	if(noveSendaddr !=null) {
    		result =200;
    	}
    	return resultModel.packageObject(result, noveSendaddr);
    }
}
