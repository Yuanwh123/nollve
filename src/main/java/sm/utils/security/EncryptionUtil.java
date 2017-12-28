package sm.utils.security;

import java.security.MessageDigest;
import java.util.Formatter;
import java.util.Random;
import java.util.UUID;

/**
 * 加密处理工具类
 *
 * @author 2i
 * @since 2014/09/01
 */
public class EncryptionUtil {

    private static int UUID_LENGTH = 32;

    // md5字符串byte数组
    private final static String[] strDigits = {"0", "1", "2", "3", "4", "5",
            "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    public static String getNonceStr() {
        Random random = new Random();
        return MD5String(String.valueOf(random.nextInt(10000)));
    }


    public static String getTimeStamp() {
        return String.valueOf(System.currentTimeMillis() / 1000);
    }

    /**
     * byte转化string
     *
     * @param bByte
     * @return
     * @author 2i
     * @since 2014/09/01
     */
    private static String byteToArrayString(byte bByte) {
        int iRet = bByte;
        // PrintHelper.print("iRet="+iRet);
        if (iRet < 0) {
            iRet += 256;
        }
        int iD1 = iRet / 16;
        int iD2 = iRet % 16;
        return strDigits[iD1] + strDigits[iD2];
    }


    /**
     * byte数组转化为string
     *
     * @param bByte
     * @return
     * @author 2i
     * @since 2014/09/01
     */
    private static String byteToString(byte[] bByte) {
        StringBuffer sBuffer = new StringBuffer();
        for (int i = 0; i < bByte.length; i++) {
            sBuffer.append(byteToArrayString(bByte[i]));
        }
        return sBuffer.toString();
    }

    /**
     * 将密码md5从65位的字符串分离出来
     *
     * @param descMD5
     * @return
     */
    public static String decodeMD5Desc2Simp(String descMD5) {
        if (descMD5 == null || descMD5.length() < 65) {
            return "";
        }
        String sOffset = descMD5.substring(0, 1);
        String sLongMD5 = descMD5.substring(1);
        int offest = Integer.parseInt(sOffset);
        String md5 = sLongMD5.substring(0, offest) + sLongMD5.substring(offest + UUID_LENGTH);
        return md5.toLowerCase();
    }

    /**
     * 密码加密成65位的字符串
     *
     * @param pwd
     * @return
     */
    public static String encodeMD5Pwd2Desc(String pwd) {
        String pwdMD5 = MD5String(pwd);
        return encodeMD5Simp2Desc(pwdMD5);
    }

    /**
     * md5字符串生成65位字符串
     *
     * @param simpMD5
     * @return
     */
    public static String encodeMD5Simp2Desc(String simpMD5) {
        Random random = new Random();
        int index = random.nextInt(9);
        String prefix = simpMD5.substring(0, index);
        String subfix = simpMD5.substring(index);
        String mixedStr = MD5String(null);
        String descMD5 = index + prefix + mixedStr + subfix;
        return descMD5.toLowerCase();
    }

    /**
     * @return String
     * @Title随机生成16为大小写字母+数字
     */
    public static String getCharAndNumr() {
        String val = "";
        Random random = new Random();
        for (int i = 0; i < 16; i++) {
            String charOrNum = random.nextInt(2) % 2 == 0 ? "char" : "num"; // 输出字母还是数字
            if ("char".equalsIgnoreCase(charOrNum)) // 字符串
            {
                int choice = random.nextInt(2) % 2 == 0 ? 65 : 97; // 取得大写字母还是小写字母
                val += (char) (choice + random.nextInt(26));
            } else if ("num".equalsIgnoreCase(charOrNum)) // 数字
            {
                val += String.valueOf(random.nextInt(10));
            }
        }
        return val;
    }

    /**
     * 获取MD5 hash值
     *
     * @param str
     * @return
     * @author 2i
     * @since 2014/09/01
     */
    public static String MD5String(String str) {
        return MD5String(str, "UTF-8");
    }


    /**
     * 获取MD5 hash值
     *
     * @param str
     * @return
     * @author 2i
     * @since 2014/09/01
     */
    public static String MD5String(String str, String charsetName) {
        String uuidStr = UUID.randomUUID().toString().replaceAll("\\-", "");
        if (str == null)    //空对象保证不报错
            str = uuidStr;
        String resultString = null;
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            resultString = byteToString(md.digest(str.getBytes(charsetName)));
        } catch (Exception ex) {
            ex.printStackTrace();
            //出错时也能返回32位字符串
            while (str.length() < UUID_LENGTH) {
                str += uuidStr;
            }
            resultString = str.substring(0, UUID_LENGTH);
        }
        return resultString;
    }


    /**
     * 字符串的sha1值
     *
     * @param str
     * @return
     */
    public static String SHA1String(String str) {
        return SHA1String(str, "UTF-8");
    }

    /**
     * 字符串的sha1值
     *
     * @param str
     * @param charsetName
     * @return
     */
    public static String SHA1String(String str, String charsetName) {
        try {
            MessageDigest crypt = MessageDigest.getInstance("SHA-1");
            crypt.reset();
            crypt.update(str.getBytes("UTF-8"));
            return  bytesToHex(crypt.digest());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 获取时间戳token
     *
     * @return
     * @author 2i
     * @since 2015/09/02
     */
    public static String getTimestampToken() {
        long current = System.currentTimeMillis();
        String orgTokenStr = UUID.randomUUID().toString() + current;
        return MD5String(orgTokenStr);
    }


    /**
     * bytes[] 转16进制
     *
     * @param hash
     * @return
     */
    private static String bytesToHex(final byte[] hash) {
        Formatter formatter = new Formatter();
        for (byte b : hash) {
            formatter.format("%02x", b);
        }
        String result = formatter.toString();
        formatter.close();
        return result;
    }
}
