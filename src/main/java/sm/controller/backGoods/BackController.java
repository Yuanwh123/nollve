package sm.controller.backGoods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/four")
public class BackController {
	public BackController() {}
	/**
	 * 退货第一步
	 * @ywh
	 */
	@RequestMapping("/step1")
	public String adminBackStep1Page() {return  "back/back1";}
	/**
	 * 退货第二步
	 * @ywh
	 */
	@RequestMapping("/step2")
	public String adminBackStep2Page() {return  "back/back2";}
	/**
	 * 退货第三步
	 * @ywh
	 */
	@RequestMapping("/step3")
	public String adminBackStep3Page() {return  "back/back3";}
	/**
	 * 退货第四步
	 * @ywh
	 */
	@RequestMapping("/step4")
	public String adminBackStep4Page() {return  "back/back4";}
}
