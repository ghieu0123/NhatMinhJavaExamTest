package com.minh.demojpa.repository;

import com.minh.demojpa.entity.Catalogs;
import com.minh.demojpa.entity.Products;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IProductsRepository extends JpaRepository<Products, Long> {
    List<Products> findByCatalog(Catalogs catalog);
}
