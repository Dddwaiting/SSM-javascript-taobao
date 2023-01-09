package com.ZZU.jQuery.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
    /**
     *将现在的时间转化成"yyyy-MM-dd HH:mm:ss"
     * @param date
     * @return
     */
    public static String formatDateTime(Date date){
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String nowDate = simpleDateFormat.format(date);
        return nowDate;
    }

    /**
     *将现在的时间转化成"yyyy-MM-dd"
     * @param date
     * @return
     */
    public static String formatDate(Date date){
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        String nowDate = simpleDateFormat.format(date);
        return nowDate;
    }

    /**
     *将现在的时间转化成"HH:mm:ss"
     * @param date
     * @return
     */
    public static String formatTimm(Date date){
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("HH:mm:ss");
        String nowDate = simpleDateFormat.format(date);
        return nowDate;
    }
}
