package sm.utils.constant;

/**
 * Session³£Á¿Ã¶¾Ùmodel
 * Created by wongloong on 16-3-30.
 */
public enum SessionEnum {

    ADMIN("admin"), ROLE("role"), COMMON_ADMIN("common_admin"), MENU_LIST("menu_list"), WEBSITE_INFO("website_info"), PRIVI_LIST("privi_list");

    private String value;

    SessionEnum(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
