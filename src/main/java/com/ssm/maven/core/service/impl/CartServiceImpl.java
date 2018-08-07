package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.dao.CartDAO;
import com.ssm.maven.core.pojo.Cart;
import com.ssm.maven.core.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("cartService")
public class CartServiceImpl implements CartService {

    @Resource
    private CartDAO cartDAO;

    @Override
    public int deleteCart(Cart cart) {
        return cartDAO.deleteCart(cart);
    }

    @Override
    public List<Cart> getCartList() {
        return cartDAO.getCartList();
    }

    @Override
    public int updateCart(Cart cart) {
        return cartDAO.updateCart(cart);
    }
}
