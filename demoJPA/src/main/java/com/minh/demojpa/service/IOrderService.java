package com.minh.demojpa.service;

import com.minh.demojpa.entity.OrderDetails;
import com.minh.demojpa.entity.Orders;
import com.minh.demojpa.entity.Users;

import java.util.List;

public interface IOrderService {
    public List<Orders> findAll();

    public Orders findByUsers(Users user);

    public void createOrder(Orders order, OrderDetails orderDetails);
}
