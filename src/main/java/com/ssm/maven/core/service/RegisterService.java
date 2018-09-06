package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.TUser;
import com.ssm.maven.core.util.JDResult;

public interface RegisterService {

    /**
     * 数据校验
     * @param param
     * @param type
     * @return
     */
    JDResult checkData(String param, int type);

    /**
     * 用户注册
     * @param user
     * @return
     */
    JDResult register(TUser user);
}
