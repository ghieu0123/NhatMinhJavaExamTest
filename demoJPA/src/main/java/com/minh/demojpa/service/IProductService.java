package com.minh.demojpa.service;

import com.minh.demojpa.entity.Products;

import java.util.List;

public interface IProductService {
    public List<Products> findAll();

    public List<Products> getListProductByCatalogsId(long catalogId);

    public Products getProductById(long id);
}
