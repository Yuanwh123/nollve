package sm.service;

import javax.servlet.http.HttpSession;

public interface LoginService {
	/*
	 * 用户登录接口
	 */
	int adminLogin(HttpSession session,String account,String password);	
	/*
	 * 用户验证码
	 */
	int regGetCode(String mobile);
	/*
	 * 用户注册接口
	 */
	int adminRegist(String mobile,String code,String password);
	/*
	 * 找回密码
	 */
	int adminFind(String mobile);
	/*
	 * 重置密码
	 */
	int adminReset(String mobile,String password);
	/*
	 * 获取用户Id
	 */
	int GetUserId(String account);
}
