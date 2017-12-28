package sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/first")
public class ShopPagesController {
	public ShopPagesController() {}
	
	/**
	 * 商城首页
	 * @ywh
	 */
	@RequestMapping("/index")
	public String adminMallIndexPage() {return  "index/index";}
	
	/**
	 * 产品中心
	 * @ywh
	 */
	@RequestMapping("/prod")
	public String adminMallProductPage() {return  "index/prod";}
	/**
	 * 网上商城
	 * @ywh
	 */
	@RequestMapping("/mall")
	public String adminMallMallPage() {return  "index/mall";}
	/**
	 * 新闻中心
	 * @ywh
	 */
	@RequestMapping("/jour")
	public String adminMallJourPage() {return  "index/jour";}
	
}
