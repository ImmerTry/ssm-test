package com.ssm.maven.core.controller;

import com.ssm.maven.core.pojo.CartItem;
import com.ssm.maven.core.service.CartService;
import com.ssm.maven.core.util.JDResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private CartService cartService;

    @RequestMapping("/add/{itemId}")
    public String addCartItem(@PathVariable String itemId, @RequestParam("num") Integer num,
                              HttpServletRequest request, HttpServletResponse response) {

        JDResult result = cartService.addCart(itemId, num, request, response);
        return "cartSuccess";
    }

    @RequestMapping("/cart")
    public String showCartList(HttpServletRequest request, Model model) {
        List<CartItem> itemList = cartService.getItems(request);
        //商品列表传给jsp
        model.addAttribute("cartList", itemList);

        return "cart";
    }

    @RequestMapping("/decreOrIncre/{itemId}/{num}")
    @ResponseBody
    public JDResult decreOrIncre(@PathVariable String itemId, @PathVariable Integer num,
                                 HttpServletRequest request, HttpServletResponse response) {

        JDResult result = cartService.updateCartItem(itemId, num, request, response);

        return result;

    }

    @RequestMapping("/delete/{itemId}")
    public String deleteCartItem(@PathVariable String itemId,HttpServletRequest request,
                                 HttpServletResponse response) {

        JDResult result = cartService.deleteCartItem(itemId, request, response);
        return "redirect:/cart/cart.action";
    }
}
