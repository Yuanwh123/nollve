package sm.utils.sms;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

public class MobileSms {
	public String Sms() throws Exception {
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("https://api.weixin.qq.com/sns/oauth2/access_token"); 
		post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");
		NameValuePair[] data ={ new NameValuePair("appid", "wx78385cd3853f6640"),new NameValuePair("secret", "909c8485644afda28c4db63142297792"),new NameValuePair("code",""),new NameValuePair("grant_type","authorization_code")};
		post.setRequestBody(data);
		client.executeMethod(post);
		Header[] headers = post.getResponseHeaders();
		int statusCode = post.getStatusCode();
		for(Header h : headers)
		{
			System.out.println(h.toString());
		}
		String result = new String(post.getResponseBodyAsString().getBytes("gbk"));
	
		post.releaseConnection();
		return result;
	}
	public static String code(String mobile) {
		return "123456";
	}
}
