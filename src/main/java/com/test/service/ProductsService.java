package com.test.service;

import com.test.po.Products;
import com.test.po.ProductsExample;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductsService {
    int deleteByPrimaryKey(Integer pid);

    int insert(Products record);

    int insertSelective(Products record);

    List<Products> selectByExample(ProductsExample example);

    Products selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Products record);

    int updateByPrimaryKey(Products record);
}
