package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.dao.TUserMapper;
import com.ssm.maven.core.pojo.TUser;
import com.ssm.maven.core.pojo.TUserExample;
import com.ssm.maven.core.service.RegisterService;
import com.ssm.maven.core.util.JDResult;
import com.ssm.maven.core.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.List;

/**
 * 注册服务
 */
@Service("registerService")
public class RegisterServiceImpl implements RegisterService {

    @Autowired
    private TUserMapper userMapper;

    @Override
    public JDResult checkData(String param, int type) {

        TUserExample example = new TUserExample();
        TUserExample.Criteria criteria = example.createCriteria();
        //1代表名称
        if (1 == type) {
            criteria.andLoginidEqualTo(param);
        }
        //执行查询
        List<TUser> list = userMapper.selectByExample(example);
        //判断查询结果是否为空
        if (list != null && list.isEmpty()) {
            return JDResult.ok(true);
        }
        return JDResult.ok(false);
    }

    /**
     * 用户注册
     *
     * @param user
     * @return
     */
    @Override
    public JDResult register(TUser user) {

        //校验数据
        if (StringUtil.isEmpty(user.getLoginid())
                || StringUtil.isEmpty(user.getLoginpwd())) {
            return JDResult.build(400,"用户名或密码不能为空");
        }

        JDResult result = checkData(user.getLoginid(), 1);

        //校验用户名是否重复
        if (!(boolean) result.getData()) {
            return JDResult.build(400,"用户名重复");
        }
        //插入数据
        user.setLogintime(new Date());
        //密码进行MD5加密
        user.setLoginpwd(DigestUtils.md5DigestAsHex(user.getLoginpwd().getBytes()));
        userMapper.insert(user);

        return JDResult.ok();
    }
}
