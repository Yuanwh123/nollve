package sm.controller.Second;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/second")
public class SecondController {
	public SecondController() {}
	
	/**
	 * 我的
	 * @ywh
	 */
	@RequestMapping("/mine")
	public String adminMallMinePage() {return  "second/mine";}
	/**
	 * 购物车
	 * @ywh
	 */
	@RequestMapping("/cart")
	public String adminMallCartPage() {return  "second/cart";}
	/**
	 * 已买到宝贝
	 * @ywh
	 */
	@RequestMapping("/bought")
	public String adminMallBoughtPage() {return  "second/bought";}
	/**
	 * 我的订单
	 * @ywh
	 */
	@RequestMapping("/order")
	public String adminMallOrderPage() {return  "second/order";}
	/**
	 * 我的收藏
	 * @ywh
	 */
	@RequestMapping("/collection")
	public String adminMallCollectionPage() {return  "second/collection";}
	/**
	 * 评价管理
	 * @ywh
	 */
	@RequestMapping("/comment")
	public String adminMallCommentPage() {return  "second/comment";}
	
	
}
