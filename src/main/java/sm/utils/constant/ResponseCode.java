package sm.utils.constant;

/**
 * Created by wongloong on 16-3-18.
 */
public enum ResponseCode {
    SUCCESS(200), NO_CONTENT(204),  PWD_ERROR(210), NO_PRILVILEGES(211), PARAM_ERROR(400), METHOD_NOT_ALLOWED(405), UPDATE_FAILED(406), SERVER_ERROR(500),ERROR(-500);
    private int code;

    ResponseCode(int code) {
        this.code = code;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
