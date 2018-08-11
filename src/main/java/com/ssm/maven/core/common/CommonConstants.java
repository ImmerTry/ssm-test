package com.ssm.maven.core.common;


import com.ssm.maven.core.util.PropertyUtil;

/**
 * @ClassName com.inxedu.os.inxedu.common.entity.CommonConstant
 * @Create Date : 2015-3-17
 *  @author www.inxedu.com
 */
public class CommonConstants {
    public static String propertyFile = "project";
    public static PropertyUtil propertyUtil = PropertyUtil.getInstance(propertyFile);
    public static String contextPath = propertyUtil.getProperty("contextPath");

}
