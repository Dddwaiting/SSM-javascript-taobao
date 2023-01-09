package com.ZZU.jQuery.common.pojo;

public class ReturnObject {
    //代表登录状态 0---失败  1---成功
    private String code;

    //用于提示用户登录的哪个地方出错
    private String message;

    //其他信息，供日后改变需要所保留
    private Object otherMessage;

    public ReturnObject() {
    }

    public ReturnObject(String code, String message, Object otherMessage) {
        this.code = code;
        this.message = message;
        this.otherMessage = otherMessage;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getOtherMessage() {
        return otherMessage;
    }

    public void setOtherMessage(Object otherMessage) {
        this.otherMessage = otherMessage;
    }

    @Override
    public String toString() {
        return "LoginState{" +
                "code='" + code + '\'' +
                ", message='" + message + '\'' +
                ", otherMessage=" + otherMessage +
                '}';
    }
}
