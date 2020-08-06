package com.test.controller;

import com.test.po.Products;
import com.test.po.ProductsExample;
import com.test.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

@SessionAttributes({"phoneList","tvList","routerList","computerList","componentList"})
@Controller
public class ProductsControl {
    @Autowired
    ProductsService productsService;

    @RequestMapping("/add_product")
    public String addProduct(){
        return "add_product";
    }
    @RequestMapping("/add_product.do")
    public String addProductDo(Products products){
        int i = productsService.insertSelective(products);
        if(i==1){
            return "redirect:product_list";
        }else {
            return null;
        }

    }
    @RequestMapping("/update_product")
    public String updateProduct(Integer pid,ModelMap map){
        Products product = productsService.selectByPrimaryKey(pid);
        map.addAttribute("product",product);
        return "modify_product";
    }
    @RequestMapping("/update_product.do")
    public String updateProductDo(Products products){
        int i = productsService.updateByPrimaryKeySelective(products);
        if(i==1){
            return "redirect:product_list";
        }
        else {
            return null;
        }
    }
    @RequestMapping("/delete_product")
    public String updateProductDo(Integer pid){
        int i = productsService.deleteByPrimaryKey(pid);
        if(i==1){
            return "redirect:product_list";
        }
        else {
            return null;
        }
    }


    @RequestMapping("/product_list")
    public String productList(ModelMap map){
        List<Products> productsList = productsService.selectByExample(new ProductsExample());
        map.addAttribute("productsList",productsList);
        return "manage_products";
    }

    @RequestMapping("/toIndex.do")
    public String selectProducts(HttpServletResponse resp, ModelMap map){
        //获取手机列表
        ProductsExample phoneExample = new ProductsExample();
        ProductsExample.Criteria phoneExampleCriteria = phoneExample.createCriteria();
        phoneExampleCriteria.andCidEqualTo(1);
        List<Products> phoneList = productsService.selectByExample(phoneExample);
        map.addAttribute("phoneList",phoneList);
        //获取电视列表
        ProductsExample tvExample = new ProductsExample();
        ProductsExample.Criteria tvExampleCriteria = tvExample.createCriteria();
        tvExampleCriteria.andCidEqualTo(2);
        List<Products> tvList = productsService.selectByExample(tvExample);
        map.addAttribute("tvList",tvList);
        //获取路由器列表
        ProductsExample routerExample = new ProductsExample();
        ProductsExample.Criteria routerExampleCriteria = routerExample.createCriteria();
        routerExampleCriteria.andCidEqualTo(3);
        List<Products> routerList = productsService.selectByExample(routerExample);
        map.addAttribute("routerList",routerList);
        //获取笔记本列表
        ProductsExample computerExample = new ProductsExample();
        ProductsExample.Criteria computerExampleCriteria = computerExample.createCriteria();
        computerExampleCriteria.andCidEqualTo(4);
        List<Products> computerList = productsService.selectByExample(computerExample);
        map.addAttribute("computerList",computerList);
        //获取配件列表
        ProductsExample componentExample = new ProductsExample();
        ProductsExample.Criteria componentExampleCriteria = componentExample.createCriteria();
        componentExampleCriteria.andCidEqualTo(5);
        List<Products> componentList = productsService.selectByExample(componentExample);
        map.addAttribute("componentList",componentList);

        //跳转页面
        return "redirect:index";
    }

    @RequestMapping("/productDetail.do")
        public String getProductDetail(Integer pid, ModelMap map){
        Products product = productsService.selectByPrimaryKey(pid);
        map.addAttribute("product",product);
        return "productdetail";

    }
    @RequestMapping("/selectByKey")
    public String selectByKey(String key, ModelMap map) throws UnsupportedEncodingException {
        String decodeKey = URLDecoder.decode(key, "utf-8");
        String sKey="%"+decodeKey+"%";
        ProductsExample productsExample = new ProductsExample();
        ProductsExample.Criteria productsExampleCriteria = productsExample.createCriteria();
        productsExampleCriteria.andPnameLike(sKey);
        List<Products> productsList = productsService.selectByExample(productsExample);
        map.addAttribute("productsList",productsList);
        return "productslist";

    }
}
