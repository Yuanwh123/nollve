package sm.controller.Api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sm.pojo.NoveBack;
import sm.pojo.NoveOrders;
import sm.service.BackGoodService;
import sm.utils.model.DefaultResultModel;

@Controller
@RequestMapping("/goods")
public class BackGoodController {
	@Autowired
	private BackGoodService backGoodsService;
	/**
	 * ��ȡ�˿���涩����Ϣ
	 * @param orderId ����Id
	 */
	@RequestMapping("/backOrderInf.do")
	@ResponseBody
	public DefaultResultModel backOrderInf(String orderId) {
		DefaultResultModel resultModel = DefaultResultModel.getInstance();
		NoveOrders orders  =backGoodsService.backPagesOrderInf(orderId);
		int result = 0;
		if(orders !=null) {
			result =200;
		}
		return resultModel.packageObject(result, orders);
	}
	/**
	 * ���Ҵ����˻�����
	 * 
	 * 
	 * @param NoveBack �˿��
	 */
	@RequestMapping("/backSellerHandle.do")
	@ResponseBody
	public DefaultResultModel backSellerHandle(NoveBack back) {
		DefaultResultModel  resultModel= DefaultResultModel.getInstance();
		String backId = backGoodsService.backHandle(back);
		int result =0;
		if(backId != "") {
			result =200;
		}
		return resultModel.packageObject(result, backId);
	}
	/**
	 * ����˻�
	 * 
	 * @param backId �˿��Id
	 */
	@RequestMapping("/backBuyHandle.do")
	@ResponseBody
	public DefaultResultModel backBuyHandle(String backId) {
		DefaultResultModel  resultModel= DefaultResultModel.getInstance();
		NoveBack noveBack = backGoodsService.BuyHandle(backId);
		int result =0 ;
		if(noveBack !=null) {
			result = 200;
		}
		return resultModel.packageObject(result, noveBack);
	}
}
