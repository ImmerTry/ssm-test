package com.ssm.maven.core.util;

public class StringUtil {
    public static boolean isEmpty(String str) {
        return str == null || "".equals(str);
    }
    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }
}
