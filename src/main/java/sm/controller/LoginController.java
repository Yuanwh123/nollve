package sm.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
/**
 * ͨ��֤�����ͼ������
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
     * �û���¼�ӿ�
     *
     * @param account   �û���
     * @param password ����
     * @return �û���¼����������
     */
    @RequestMapping("/login.do")
    @ResponseBody
    public DefaultResultModel adminLogin(HttpServletResponse resp,HttpSession session, String account, String password) {
    	
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
        if (resultModel.validateNullParam(account, "�������˺�")) {
        	
            return resultModel;
        }
        if (resultModel.validateNullParam(password, "����������")) {
            return resultModel;
        }
        int result = loginServiceImpl.adminLogin(session,account, password);
        if(result == 200) {
        	session.setAttribute(account, account);
        	session.setAttribute("pwd", password);
        }
        return resultModel.packageObject(result, "��¼�ɹ�");
    }
    /**
     * �̳ǵ����֤��
     */
    @RequestMapping("/regGetCode.do")
    @ResponseBody
    public DefaultResultModel adminRegGetCode(String mobile) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int num=loginServiceImpl.regGetCode(mobile);
    	return resultModel.packageObject(num, "123456");
    }
    /**
     * �̳��û�ע��ӿ�
     * @param mobile   �ֻ���
     * @param code   ��֤��
     * @param password   ����
     */
    @RequestMapping("/regist.do")
    @ResponseBody
    public DefaultResultModel adminRegist(HttpServletResponse resp,String mobile, String code,String password) {
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = loginServiceImpl.adminRegist(mobile, code, password);
    	return resultModel.packageObject(result, "ע��ɹ�");
    }
    /**
     * �̳��һ�����ӿ�
     * @param mobile   �ֻ���
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
     * �̳���������ӿ�
     * @param mobile �ֻ���
     * @param password ����
     */
    @RequestMapping("/reset.do")
    @ResponseBody
    public DefaultResultModel adminReset(HttpServletResponse resp,String mobile,String password) {
    	resp.setHeader("Access-Control-Allow-Origin", "*");
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	int result = loginServiceImpl.adminReset(mobile,password);
    	return resultModel.packageObject(result, "��������ɹ�");
    }
    /**
     * �̳��˳��ӿ�
     * @param account �û���
     */
    @RequestMapping("/exit.do")
    @ResponseBody
    public DefaultResultModel adminExit(HttpServletResponse resp,HttpSession session,String account) {
    	DefaultResultModel resultModel = DefaultResultModel.getInstance();
    	session.removeAttribute(account);
    	return resultModel.packageObject(200, "�˳��ɹ�");
    }
    /**
     * ��ȡ�û�id
     * @param account �û���
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
