package com.test.controller;

import com.test.po.*;
import com.test.service.CartService;
import com.test.service.ProductsService;
import com.test.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@SessionAttributes({"cart_count","carts"})
@Controller
public class CartControl {
    @Autowired
    private CartService cartService;
    @Autowired
    private ProductsService productsService;
    @RequestMapping("/cart")
    public String toCart(HttpServletRequest req,ModelMap map){
        HttpSession session=req.getSession();
        Integer uid = (Integer) session.getAttribute("uid");
        CartExample cartExample = new CartExample();
        CartExample.Criteria cartExampleCriteria = cartExample.createCriteria();
        cartExampleCriteria.andUidEqualTo(uid);
        List<Cart> carts = cartService.selectByExample(cartExample);
        map.addAttribute("carts",carts);
        map.addAttribute("cart_count",carts.size());
        return "cart";
    }
    @RequestMapping("/add_cart")
    public String addCart(HttpServletRequest req, Integer pid){
        HttpSession session = req.getSession();
        Integer uid = (Integer) session.getAttribute("uid");
        Products product = productsService.selectByPrimaryKey(pid);
        Cart cart=new Cart();
        cart.setPid(pid);
        cart.setUid(uid);
        cart.setCount(1);
        cart.setPname(product.getPname());
        cart.setImgurl(product.getImgurl());
        cart.setPrice(product.getPrice());
        int i = cartService.insertSelective(cart);
        if (i==1){
           return "redirect:cart";
        }else {
            return  null;
        }
    }
    @RequestMapping("/deleteCart")
    public String deleteCart(Integer carid){
        int i = cartService.deleteByPrimaryKey(carid);
        if (i==1){
            return "redirect:cart";
        }else {
            return null;
        }

    }
    @RequestMapping("/updateCart")
    public String updateCart(Cart cart){
        int i = cartService.updateByPrimaryKeySelective(cart);
        if (i==1){
            return "redirect:cart";
        }else {
            return null;
        }

    }
    @RequestMapping("/productPay")
    public String productPay(){
        return "productpay";
    }
}
