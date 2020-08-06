package com.test.service.impl;

import com.test.dao.ProductsMapper;
import com.test.po.Products;
import com.test.po.ProductsExample;
import com.test.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProductsServiceImpl implements ProductsService {

    @Autowired
    private ProductsMapper productsMapper;
    @Override
    public int deleteByPrimaryKey(Integer pid) {
        return productsMapper.deleteByPrimaryKey(pid);
    }

    @Override
    public int insert(Products record) {
        return productsMapper.insert(record);
    }

    @Override
    public int insertSelective(Products record) {
        return productsMapper.insertSelective(record);
    }

    @Override
    public List<Products> selectByExample(ProductsExample example) {
        return productsMapper.selectByExample(example);
    }

    @Override
    public Products selectByPrimaryKey(Integer pid) {
        return productsMapper.selectByPrimaryKey(pid);
    }

    @Override
    public int updateByPrimaryKeySelective(Products record) {
        return productsMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Products record) {
        return productsMapper.updateByPrimaryKey(record);
    }
}
