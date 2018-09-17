package com.ssm.maven.core.service.impl;

import com.ssm.maven.core.pojo.CartItem;
import com.ssm.maven.core.pojo.Item;
import com.ssm.maven.core.service.CartService;
import com.ssm.maven.core.service.ItemService;
import com.ssm.maven.core.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@Service("cartService")
public class CartServiceImpl implements CartService {

    @Autowired
    private ItemService itemService;
    @Value("${LL_CART}")
    private String LL_CART;
    @Value("${COOKIE_EXPIRE}")
    private Integer COOKIE_EXPIRE;

    /**
     * 添加商品到购物车
     *
     * @param itemId   商品ID
     * @param num      商品数量
     * @param request
     * @param response
     * @return 返回status 200
     */
    @Override
    public JDResult addCart(String itemId, Integer num, HttpServletRequest request, HttpServletResponse response) {

//        1、接收商品id
//        2、从cookie 中购物车商品列表
        List<CartItem> itemList = getItemListByCookie(request);
//        3、从商品列表中查询列表是否存在此商品
        boolean haveFlag = false;
        for (CartItem cartItem : itemList) {
//        4、如果存在商品的数量加上参数中的商品数量
            if (itemId.equals(cartItem.getId())) {
                cartItem.setNum(cartItem.getNum() + num);
                haveFlag = true;
                break;
            }
        }
//        5、如果不存在，调用rest 服务，根据商品id 获得商品数据。
        if (!haveFlag) {
            Item item = itemService.findItemById(itemId);
            //转换成为CartItem
            CartItem cartItem = new CartItem();
            cartItem.setId(itemId);
            cartItem.setNum(num);
            cartItem.setPrice(item.getPrice());
            cartItem.setTitle(item.getRemark());
            if (StringUtil.isNotEmpty(item.getPicturePath())) {
                String images = item.getPicturePath();
                String image = images.split(",")[0];
                cartItem.setImage(image);
            }
//        6、把商品数据添加到列表中
            itemList.add(cartItem);
        }
//        7、把购物车商品列表写入cookie
        CookieUtils.setCookie(request, response, LL_CART, JackJson.fromObjectToJson(itemList), COOKIE_EXPIRE, true);
//        8、返回JDResult

        return JDResult.ok();
    }

    @Override
    public List<CartItem> getItems(HttpServletRequest request) {
        List<CartItem> list = getItemListByCookie(request);
        return list;
    }

    @Override
    public JDResult updateCartItem(String itemId, Integer num, HttpServletRequest request, HttpServletResponse response) {
        //从cookie取出商品
        List<CartItem> list = getItemListByCookie(request);
        //根据商品ID获取商品
        for (CartItem cart : list) {
            //更新数量
            if (itemId.equals(cart.getId())) {
                cart.setNum(num);
            }
        }
        //写入cookie
        CookieUtils.setCookie(request, response, LL_CART, JackJson.fromObjectToJson(list), COOKIE_EXPIRE, true);
        return JDResult.ok();
    }

    @Override
    public JDResult deleteCartItem(String id, HttpServletRequest request, HttpServletResponse response) {
        //从cookie取出商品列表
        List<CartItem> list = getItemListByCookie(request);
        for (CartItem cartItem : list) {
            //判断id是否相等
            if (id.equals(cartItem.getId())) {
                //删除商品
                list.remove(cartItem);
                break;
            }
        }
        //写入cookie
        CookieUtils.setCookie(request, response, LL_CART, JackJson.fromObjectToJson(list), COOKIE_EXPIRE, true);
        return JDResult.ok();
    }


    /**
     * 获取cookie购物车列表
     *
     * @param request
     * @return
     */
    private List<CartItem> getItemListByCookie(HttpServletRequest request) {
        //从cookie获取购物车列表
        String json = CookieUtils.getCookieValue(request, LL_CART, true);
        if (json == null) {
            return new ArrayList<>();
        }
        try {
            //把json转换为CartItem对象
            List<CartItem> itemList = JackJson.fromJsonToList(json, CartItem.class);
            return itemList;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

}
