package sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PagesController {
	public PagesController() {}
	/**
	 * ��½ҳ��
	 * @ywh
	 */
	@RequestMapping("/login")
	public String adminMallLoginPage() {return  "login/user";}
	/**
	 * ע��ҳ��
	 * @ywh
	 */
	@RequestMapping("/regist")
	public String adminMallRegistPage() {return  "login/regist";}
	/**
	 * �һ�����ҳ��
	 * @ywh
	 */
	@RequestMapping("/find")
	public String adminMallFindPage() {return  "login/find";}
	/**
	 * ��������ҳ��
	 * @ywh
	 */
	@RequestMapping("/reset")
	public String adminMallResetPage() {return  "login/reset";}
	
	/**
	 * �ϴ�ҳ��
	 * @ywh
	 */
	@RequestMapping("/firstPages")
	public String adminMallPicturePage() {return  "Log_in/index";}
	
}
