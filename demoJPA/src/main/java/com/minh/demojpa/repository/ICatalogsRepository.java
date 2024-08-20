package com.minh.demojpa.repository;

import com.minh.demojpa.entity.Catalogs;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICatalogsRepository extends JpaRepository<Catalogs, Long> {
}
