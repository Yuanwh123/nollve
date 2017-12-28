package sm.controller.goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/third")
public class GoodsPagesController {
	public GoodsPagesController() {}
	/**
	 * 商品详情页
	 * @ywh
	 */
	@RequestMapping("/goods")
	public String adminMallIndexPage() {return  "goods/goodsDetail";}
	/**
	 * 商品购买页
	 * @ywh
	 */
	@RequestMapping("/med")
	public String adminMallBuyPage() {return  "goods/goodsBuy";}
}
