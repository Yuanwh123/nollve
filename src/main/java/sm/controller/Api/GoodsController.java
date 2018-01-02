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

import net.sf.json.JSONArray;
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
    public DefaultResultModel showGoodsCart(Integer userId,String goodsInf,Integer num,String spec,String price,String pic,Integer goodsId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	String value = goodsServiceImpl.InsertCart(userId,goodsInf,num,spec,price,pic,goodsId);
    	int numb =-702;
    	if(value != "") {
    		numb=200;
    	}
    	return resultModel.packageObject(numb,value);
    }
    /**
     * 立即购买
     *
     * @param gooodsInf   商品信息
     * @param num   商品数量
     * @param spec   商品规格
     * @param price   商品价格
     * @param pic	商品图片
     *  @param goodsId	商品Id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsCartBuy.do")
    @ResponseBody()
    public DefaultResultModel showGoodsCartBuy(Integer userId,String goodsInf,Integer num,String spec,String price,String pic,Integer goodsId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	String value = goodsServiceImpl.InsertCartBuy(userId,goodsInf,num,spec,price,pic,goodsId);
    	int numb =-702;
    	if(value != "") {
    		numb=200;
    	}
    	return resultModel.packageObject(numb,value);
    }
    /**
     * 收藏
     *
     * @param gooodsInf   商品信息
     * @param num   商品数量
     * @param spec   商品规格
     * @param price   商品价格
     * @param pic	商品图片
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsCartColl.do")
    @ResponseBody()
    public DefaultResultModel showGoodsCartColl(Integer userId,String goodsInf,Integer num,String spec,String price,String pic,Integer goodsId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	String value = goodsServiceImpl.InsertCartColl(userId,goodsInf,num,spec,price,pic,goodsId);
    	int numb =-702;
    	if(value != "") {
    		numb=200;
    	}
    	return resultModel.packageObject(numb,value);
    }
    /**
     * 更新购物车数据
     * @param datas 商品数据
     */
    @RequestMapping("/goodsCartDatas.do")
    @ResponseBody()
    public DefaultResultModel showGoodsCartDatas(String value) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int status = goodsServiceImpl.updateCartDatas(value);
    	return resultModel.packageObject(status,"更新购物车数据");
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
    /**
     * 添加收货地址
     * @param data   收货地址信息
     */
    @RequestMapping("/goodsInseAddr.do")
    @ResponseBody()
    public DefaultResultModel showGoodsInseAddr(NoveSendaddr obj) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = goodsServiceImpl.GoodsInseAddr(obj);
    	return resultModel.packageObject(result, "添加新地址成功");
    }
    /**
     * 删除收货地址
     * @param orderId   订单id
     */
    @RequestMapping("/goodsDelAddr.do")
    @ResponseBody()
    public DefaultResultModel showGoodsDelAddr(Integer orderId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = goodsServiceImpl.GoodsDelAddr(orderId);
    	return resultModel.packageObject(result, "删除地址成功");
    }
    /**
     * 购物车数量
     *
     * @param userId   订单id
     * @return 商品返回数据体
     */
    @RequestMapping("/goodsCartNum.do")
    @ResponseBody()
    public DefaultResultModel showCartNum(Integer userId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int num = goodsServiceImpl.CartNum(userId);
    	int result =0;
    	if(num != 0) {
    		result = 200;
    	}
    	return resultModel.packageObject(result, num);
    }
    
    /**
     * 获取收藏列表
     */
    @RequestMapping("/goodsColNum.do")
    @ResponseBody()
    public DefaultResultModel showColNum(Integer userId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	List<NoveOrders> num =goodsServiceImpl.ColNum(userId);
    	int result = -705;
    	if(num.size()!=0) {
    		result = 200;
    	}
    	return resultModel.packageObject(result, num);
    }
}
