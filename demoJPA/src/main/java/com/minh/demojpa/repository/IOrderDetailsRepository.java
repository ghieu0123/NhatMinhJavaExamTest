package com.minh.demojpa.repository;

import com.minh.demojpa.entity.OrderDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IOrderDetailsRepository extends JpaRepository<OrderDetails, Long> {
}