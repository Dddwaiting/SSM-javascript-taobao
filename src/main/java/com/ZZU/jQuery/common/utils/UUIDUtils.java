package com.ZZU.jQuery.common.utils;

import java.util.UUID;

public class UUIDUtils {
    /**
     * 获取UUID的值
     *
     * @return
     */
    public static String getUUID() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }
}
