package sm.service;

import javax.servlet.http.HttpSession;

public interface LoginService {
	/*
	 * �û���¼�ӿ�
	 */
	int adminLogin(HttpSession session,String account,String password);	
	/*
	 * �û���֤��
	 */
	int regGetCode(String mobile);
	/*
	 * �û�ע��ӿ�
	 */
	int adminRegist(String mobile,String code,String password);
	/*
	 * �һ�����
	 */
	int adminFind(String mobile);
	/*
	 * ��������
	 */
	int adminReset(String mobile,String password);
	/*
	 * ��ȡ�û�Id
	 */
	int GetUserId(String account);
}
