package sm.controller.backGoods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/four")
public class BackController {
	public BackController() {}
	/**
	 * �˻���һ��
	 * @ywh
	 */
	@RequestMapping("/step1")
	public String adminBackStep1Page() {return  "back/back1";}
	/**
	 * �˻��ڶ���
	 * @ywh
	 */
	@RequestMapping("/step2")
	public String adminBackStep2Page() {return  "back/back2";}
	/**
	 * �˻�������
	 * @ywh
	 */
	@RequestMapping("/step3")
	public String adminBackStep3Page() {return  "back/back3";}
	/**
	 * �˻����Ĳ�
	 * @ywh
	 */
	@RequestMapping("/step4")
	public String adminBackStep4Page() {return  "back/back4";}
}
