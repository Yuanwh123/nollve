package sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PagesController {
	public PagesController() {}
	/**
	 * 登陆页面
	 * @ywh
	 */
	@RequestMapping("/login")
	public String adminMallLoginPage() {return  "login/user";}
	/**
	 * 注册页面
	 * @ywh
	 */
	@RequestMapping("/regist")
	public String adminMallRegistPage() {return  "login/regist";}
	/**
	 * 找回密码页面
	 * @ywh
	 */
	@RequestMapping("/find")
	public String adminMallFindPage() {return  "login/find";}
	/**
	 * 重置密码页面
	 * @ywh
	 */
	@RequestMapping("/reset")
	public String adminMallResetPage() {return  "login/reset";}
	
	
	/**
	 * 上传页面
	 * @ywh
	 */
	@RequestMapping("/picture")
	public String adminMallPicturePage() {return  "picture/index";}
}
