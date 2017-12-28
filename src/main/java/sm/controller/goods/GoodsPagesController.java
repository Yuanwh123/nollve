package sm.controller.goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/third")
public class GoodsPagesController {
	public GoodsPagesController() {}
	/**
	 * ÉÌÆ·ÏêÇéÒ³
	 * @ywh
	 */
	@RequestMapping("/goods")
	public String adminMallIndexPage() {return  "goods/goodsDetail";}
}
