package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.CartItem;
import com.ssm.maven.core.util.JDResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 添加购物车服务
 */
public interface CartService {

    JDResult addCart(String itemId, Integer num, HttpServletRequest request, HttpServletResponse response);

    List<CartItem> getItems(HttpServletRequest request);
}
