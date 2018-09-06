package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.dao.JedisClient;
import com.ssm.maven.core.dao.TUserMapper;
import com.ssm.maven.core.pojo.TUser;
import com.ssm.maven.core.pojo.TUserExample;
import com.ssm.maven.core.service.LoginService;
import com.ssm.maven.core.util.CookieUtils;
import com.ssm.maven.core.util.JDResult;
import com.ssm.maven.core.util.JackJson;
import com.ssm.maven.core.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;

/**
 * 登录服务
 */
@Service("loginService")
public class LoginServiceImpl implements LoginService {
    @Autowired
    private TUserMapper userMapper;

    @Autowired
    private JedisClient jedisClient;

    @Value("${REDIS_USER_SESSION_KEY}")
    private String REDIS_USER_SESSION;

    @Value("${SESSION_EXPIRE}")
    private Integer SESSION_EXPIRE;

    @Override
    public JDResult login(String loginid, String loginpwd, HttpServletRequest request, HttpServletResponse response) {
        //校验用户名密码是否正确
        TUserExample example = new TUserExample();
        TUserExample.Criteria criteria = example.createCriteria();
        criteria.andLoginidEqualTo(loginid);

        List<TUser> list = userMapper.selectByExample(example);

        if (list == null || list.isEmpty()) {
            return JDResult.build(400, "用户名或密码错误");
        }
        //获取用户信息
        TUser user = list.get(0);
        //校验密码
        if (!user.getLoginpwd().equals(DigestUtils.md5DigestAsHex(loginpwd.getBytes()))) {
            return JDResult.build(400, "用户名或密码错误");
        }
        //登录成功
        //生成token
        String token = UUID.randomUUID().toString();
        //将用户信息写入redis
        //key: REDIS_SESSION:{token}
        //value: user 转 json
        //转之前清空密码
        user.setLoginpwd(null);
        jedisClient.set(REDIS_USER_SESSION + ":" + token, JackJson.fromObjectToJson(user));
        //设置session过期时间
        jedisClient.expire(REDIS_USER_SESSION + ":" + token, SESSION_EXPIRE);
        //写入cookie
        CookieUtils.setCookie(request, response, "LL_TOKEN", token);
        return JDResult.ok(token);
    }

    @Override
    public JDResult getUserByToken(String token) {

        String json = jedisClient.get(REDIS_USER_SESSION + ":" + token);
        //判断是否查询到结果
        if (StringUtil.isEmpty(json)) {
            return JDResult.build(400, "用户Session已过期");
        }
        //把Json转换成User对象
        TUser user = JackJson.fromJsonToObject(json, TUser.class);
        //更新Session过期时间
        jedisClient.expire(REDIS_USER_SESSION + ":" + token, SESSION_EXPIRE);

        return JDResult.ok(user);
    }

    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response) {

        CookieUtils.deleteCookie(request,response,"LL_TOKEN");

    }
}
