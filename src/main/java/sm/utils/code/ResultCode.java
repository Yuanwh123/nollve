package sm.utils.code;
/*
 * 公共信息类
 */
public class ResultCode {
	
	public String  totalInf(int i) {
		String value="";
		switch (i) {
		case 0:value="操作失败";
		break;
		case 101:value="帐号不存在";
		case 102:value="密码错误";break;
		case 103:value="密码格式有误";break;
		case 111:value="验证码不正确";break;
		case 112:value="验证码发送频繁,请稍后再试";break;
		case 113:value="验证码已过期";break;
		case 114:value="该手机号已被注册";break;
		case 115:value="该用户不存在";break;
		case 116:value="密码错误";break;
		case 117:value="原密码错误";break;
		case 118:value="好友请求不存在";break;
		case 119:value="已处理过该好友请求";break;
		case 120:value="对方已成为好友";break;
		case 121:value="原手机号与账号不匹配";break;
		case 122:value="新手机号已被其他账号绑定,请更换其他手机号";break;
		case 123:value="该手机号已注册";break;
		case 124:value="请输入动态内容或者上传动态图片";break;
		case 126:value="该评论已被删除";break;
		case 127:value="当前用户无法删除该评论";break;
		case 128:value="该动态已被删除";break;
		case 129:value="当前用户无法删除该动态";break;
		case 131:value="该档案不存在";break;
		case 132:value="当前用户无权限修改此档案";break;
		case 135:value="当前用户无权限删除此请求";break;
		case 140:value="当前用户今日已签到";break;
		case 142:value="请选择职位类型";break;
		case 150:value="文件过大，请压缩后上传请选择职位类型";break;
		case 151:value="最多创建3级目录";break;
		case 154:value="商品已售出,不允许删除";break;
		case 152:value="文件已存在";break;
		//5x 为通用错误相关错误
		case 500:value="操作失败";break;
		case 501:value="手机号不合法";break;
		case 502:value="参数不正确"; break;
		case 508:value="数据库ip或者账号密码错误";break;
		//60x 为会员查询相关
		case 601:value="积分不足";break;
		case 602:value="余额不足";break;
		//20 成功
		case 200:value="请求处理成功";break;
		default :value="后台出错";break;
		}
		return value;
	}
}
