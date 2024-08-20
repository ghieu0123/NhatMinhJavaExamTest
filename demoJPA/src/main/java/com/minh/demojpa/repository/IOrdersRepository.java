package com.minh.demojpa.repository;

import com.minh.demojpa.entity.Orders;
import com.minh.demojpa.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IOrdersRepository extends JpaRepository<Orders, Long> {
    public Orders findByUser(Users users);
}