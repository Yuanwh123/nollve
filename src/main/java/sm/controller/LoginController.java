package sm.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
/**
 * 通行证相关视图控制器
 * Created by ywh on 2017/12/20.
 */
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sm.service.LoginService;
import sm.utils.model.DefaultResultModel;
@Controller
@RequestMapping("/login/passport")
public class LoginController {
	
	@Autowired
	private LoginService loginServiceImpl;
	/**
     * 用户登录接口
     *
     * @param account   用户名
     * @param password 密码
     * @return 用户登录返回数据体
     */
    @RequestMapping("/login.do")
    @ResponseBody
    public DefaultResultModel adminLogin(HttpServletResponse resp,HttpSession session, String account, String password) {
    	
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
        if (resultModel.validateNullParam(account, "请输入账号")) {
        	
            return resultModel;
        }
        if (resultModel.validateNullParam(password, "请输入密码")) {
            return resultModel;
        }
        int result = loginServiceImpl.adminLogin(session,account, password);
        if(result == 200) {
        	session.setAttribute(account, account);
        	session.setAttribute("pwd", password);
        }
        return resultModel.packageObject(result, "登录成功");
    }
    /**
     * 商城点击验证码
     */
    @RequestMapping("/regGetCode.do")
    @ResponseBody
    public DefaultResultModel adminRegGetCode(String mobile) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int num=loginServiceImpl.regGetCode(mobile);
    	return resultModel.packageObject(num, "123456");
    }
    /**
     * 商城用户注册接口
     * @param mobile   手机号
     * @param code   验证码
     * @param password   密码
     */
    @RequestMapping("/regist.do")
    @ResponseBody
    public DefaultResultModel adminRegist(HttpServletResponse resp,String mobile, String code,String password) {
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = loginServiceImpl.adminRegist(mobile, code, password);
    	return resultModel.packageObject(result, "注册成功");
    }
    /**
     * 商城找回密码接口
     * @param mobile   手机号
     */
    @RequestMapping("/find.do")
    @ResponseBody
    public DefaultResultModel adminFind(HttpServletResponse resp,String mobile) {
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = loginServiceImpl.adminFind(mobile);
    	return resultModel.packageObject(result, "123456");
    }
    /**
     * 商城重置密码接口
     * @param mobile 手机号
     * @param password 密码
     */
    @RequestMapping("/reset.do")
    @ResponseBody
    public DefaultResultModel adminReset(HttpServletResponse resp,String mobile,String password) {
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = loginServiceImpl.adminReset(mobile,password);
    	return resultModel.packageObject(result, "重置密码成功");
    }
    /**
     * 商城退出接口
     * @param account 用户名
     */
    @RequestMapping("/exit.do")
    @ResponseBody
    public DefaultResultModel adminExit(HttpServletResponse resp,HttpSession session,String account) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	session.removeAttribute(account);
    	return resultModel.packageObject(200, "退出成功");
    }
    /**
     * 获取用户id
     * @param account 用户名
     */
    @RequestMapping("/GetUserId.do")
    @ResponseBody
    public DefaultResultModel adminGetUserId(String account) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int userId = loginServiceImpl.GetUserId(account);
    	int result =0;
    	if(userId !=0) {
    		result =200;
    	}
    	return resultModel.packageObject(result, userId);
    }
}
