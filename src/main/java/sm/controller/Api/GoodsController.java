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
 * ͨ��֤�����ͼ������
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
     * ��Ʒ����ӿ�
     *
     * @param goodsId   ��Ʒ���
     * @return ��Ʒ����������
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
     * ���빺�ﳵ
     *
     * @param gooodsInf   ��Ʒ��Ϣ
     * @param num   ��Ʒ����
     * @param spec   ��Ʒ���
     * @param price   ��Ʒ�۸�
     * @param pic	��ƷͼƬ
     * @return ��Ʒ����������
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
     * ��������
     *
     * @param gooodsInf   ��Ʒ��Ϣ
     * @param num   ��Ʒ����
     * @param spec   ��Ʒ���
     * @param price   ��Ʒ�۸�
     * @param pic	��ƷͼƬ
     *  @param goodsId	��ƷId
     * @return ��Ʒ����������
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
     * �ղ�
     *
     * @param gooodsInf   ��Ʒ��Ϣ
     * @param num   ��Ʒ����
     * @param spec   ��Ʒ���
     * @param price   ��Ʒ�۸�
     * @param pic	��ƷͼƬ
     * @return ��Ʒ����������
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
     * ���¹��ﳵ����
     * @param datas ��Ʒ����
     */
    @RequestMapping("/goodsCartDatas.do")
    @ResponseBody()
    public DefaultResultModel showGoodsCartDatas(String value) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int status = goodsServiceImpl.updateCartDatas(value);
    	return resultModel.packageObject(status,"���¹��ﳵ����");
    }
    /**
     * ���ﳵ�б�
     *
     * @param userId   �û�id
     * @return ��Ʒ����������
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
     * ȷ�϶�����Ϣ
     *
     * @param orderId   ����id
     * @return ��Ʒ����������
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
     * �ջ���ַ�б�
     *
     * @param userId   ����id
     * @return ��Ʒ����������
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
     * ����ջ���ַ
     * @param data   �ջ���ַ��Ϣ
     */
    @RequestMapping("/goodsInseAddr.do")
    @ResponseBody()
    public DefaultResultModel showGoodsInseAddr(NoveSendaddr obj) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = goodsServiceImpl.GoodsInseAddr(obj);
    	return resultModel.packageObject(result, "����µ�ַ�ɹ�");
    }
    /**
     * ɾ���ջ���ַ
     * @param orderId   ����id
     */
    @RequestMapping("/goodsDelAddr.do")
    @ResponseBody()
    public DefaultResultModel showGoodsDelAddr(Integer orderId) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = goodsServiceImpl.GoodsDelAddr(orderId);
    	return resultModel.packageObject(result, "ɾ����ַ�ɹ�");
    }
    /**
     * ���ﳵ����
     *
     * @param userId   ����id
     * @return ��Ʒ����������
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
     * ��ȡ�ղ��б�
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
