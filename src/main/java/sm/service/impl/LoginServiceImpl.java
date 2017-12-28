package sm.service.impl;

import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sm.dao.NoveUserMapper;
import sm.pojo.NoveUser;
import sm.service.LoginService;
import sm.utils.constant.SessionEnum;
import sm.utils.security.PasswordMD5Utils;
import sm.utils.sms.MobileSms;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	@Autowired
	private NoveUserMapper loginMapper;
	
	@Override
	public int adminLogin(HttpSession session,String account, String password) {
		NoveUser u = loginMapper.getRoleName(account);
		if(u==null) {
			return -101;
		}
		String orgPassword = PasswordMD5Utils.decryStringMD5(password);
		if(orgPassword == null) {
			return -103;
		}
		if(!orgPassword.equals(u.getPassword())) {
			return -102;
		}
		session.setAttribute(SessionEnum.ADMIN.getValue(), u);
		return 200;
	}
	@Override
	public int adminRegist(String mobile, String code, String password) {
		NoveUser u = loginMapper.getRoleMobile(mobile);
		//手机号是否被注册
		if(u != null ) {
			return -114;
		}
		
		//手机验证码是否正确
		if(!MobileSms.code(mobile).equals(code)) {
			return -111;
		}
		u = new NoveUser();
		u.setUserTel(mobile);
		u.setUserName(mobile);
		u.setPassword(PasswordMD5Utils.decryStringMD5(password));
		loginMapper.insertSelective(u);		
		return 200;
	}
	@Override
	public int adminFind(String mobile) {
		NoveUser u = loginMapper.getRoleMobile(mobile);
		if(u == null) {
			return -115;
		}
		//手机验证码是否正确
		if(!MobileSms.code(mobile).equals("123456")) {
			return -111;
		}
		return 200;
	}
	@Override
	public int adminReset(String mobile, String password) {
		String pwd = PasswordMD5Utils.decryStringMD5(password);
		NoveUser u = new NoveUser();
		u.setPassword(pwd);
		u.setUserTel(mobile);
		loginMapper.updateRolePassword(u);
		return 200;
	}
}
