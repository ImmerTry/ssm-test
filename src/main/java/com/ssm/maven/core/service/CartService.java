package com.ssm.maven.core.service;

import com.ssm.maven.core.pojo.Cart;

import java.util.List;

public interface CartService {
    /**
     * 删除购物车
     *
     * @param cart
     * @return
     */
    int deleteCart(Cart cart);

    /**
     * 查询购物车
     *
     * @return
     */
    List<Cart> getCartList();

    /**
     * 更新购物车
     *
     * @param cart
     * @return
     */
    int updateCart(Cart cart);
}
