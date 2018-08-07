package com.ssm.maven.core.dao;

import com.ssm.maven.core.pojo.Cart;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartDAO {

    /**
     * 删除购物车
     * @param cart
     * @return
     */
    int deleteCart(@Param("cart") Cart cart);

    /**
     * 查询购物车
     * @return
     */
    List<Cart> getCartList();

    /**
     * 更新购物车
     * @param cart
     * @return
     */
    int updateCart(@Param("cart") Cart cart);
}
