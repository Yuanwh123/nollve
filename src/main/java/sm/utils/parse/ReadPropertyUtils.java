package sm.utils.parse;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import sm.utils.model.OrderedProperties;

/**
 * Created by wongloong on 16-3-18.
 */
public class ReadPropertyUtils {
    private Logger logger = LoggerFactory.getLogger(ReadPropertyUtils.class);
    private static ReadPropertyUtils readTool = new ReadPropertyUtils();
    String path = "/config/config.properties";

    private ReadPropertyUtils() {
    }

    public static ReadPropertyUtils getInstance() {
        return readTool;
    }

    /**
     * path is /resource/config.properties
     *
     * @param key get value by key
     * @return "" or String
     */
    public String readProperties(String configFile, String key) {
        Properties props = readAllProperties(configFile);
        String result = "";
        try {
            result = props.getProperty(key);
        } catch (Exception e1) {
            logger.error(e1.getMessage());
        }
        return result;
    }

    /**
     * 获取properties的所有值
     *
     * @param configFile
     * @return hashMap
     */
    public Properties readAllProperties(String configFile) {
        Properties props = new Properties();
        InputStream in = null;
        try {
            in = getClass().getResourceAsStream(configFile);
            BufferedReader bf = new BufferedReader(new InputStreamReader(in, "UTF-8"));
            props.load(bf);
        } catch (Exception e1) {
            logger.error(e1.getMessage());
        } finally {
            try {
                if (null != in) {
                    in.close();
                }
            } catch (IOException e) {
                logger.error(e.getMessage());
            }
        }
        return props;
    }


    /**
     * 写入配置文件
     *
     * @param key        字段key
     * @param value      字段value
     */
    public void writeProperties(final String key, final String value) {
        Map<String, String> map = new HashMap<String, String>() {{
            put(key, value);
        }};
        writeProperties(path, map);
    }

    /**
     * 写入配置文件
     *
     * @param configFile 配置文件
     * @param key        字段key
     * @param value      字段value
     */
    public void writeProperties(String configFile, final String key, final String value) {
        Map<String, String> map = new HashMap<String, String>() {{
            put(key, value);
        }};
        writeProperties(configFile, map);
    }

    public void overrideProperties(String configFile, LinkedHashMap<String, String> map) {
        FileReader reader = null;
        FileWriter writer = null;
        try {
            Properties props = new OrderedProperties();

            String filepath = getClass().getResource(configFile).getPath();
            reader = new FileReader(filepath);
            props.load(reader);
            // 以适合使用 load 方法加载到 Properties 表中的格式，
            // 将此 Properties 表中的属性列表（键和元素对）写入输出流
            for (Map.Entry<String, String> item : map.entrySet()) {
                props.setProperty(item.getKey(), item.getValue());
                System.err.println(item);
            }
            writer = new FileWriter(filepath);
            props.store(writer, "Update config value");
        } catch (Exception e1) {
            logger.error(e1.getMessage());
        } finally {
            try {
                if (null != reader) {
                    reader.close();
                }
                if (null != writer) {
                    writer.flush();
                    writer.close();
                }
            } catch (IOException e) {
                logger.error(e.getMessage());
            }
        }
    }

    public void writeProperties(String configFile, Map<String, String> map) {
        Properties props = readAllProperties(configFile);
        OutputStreamWriter fos = null;
        try {
            String filepath = getClass().getResource(configFile).getPath();
            fos = new OutputStreamWriter(new FileOutputStream(filepath), "utf-8");
            // 以适合使用 load 方法加载到 Properties 表中的格式，
            // 将此 Properties 表中的属性列表（键和元素对）写入输出流
            for (Map.Entry<String, String> item : map.entrySet()) {
                props.setProperty(item.getKey(), item.getValue());
            }
            props.store(fos, "Update config value");
        } catch (Exception e1) {
            logger.error(e1.getMessage());
        } finally {
            try {
                if (null != fos) {
                    fos.flush();
                    fos.close();
                }
            } catch (IOException e) {
                logger.error(e.getMessage());
            }
        }
    }

    /**
     * 默认配置
     *
     * @param key
     * @return
     */
    public String readProperties(String key) {
        return readProperties(path, key);
    }
}
