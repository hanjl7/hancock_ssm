package cn.hjl.ssm.service;

import cn.hjl.ssm.domain.Orders;

import java.util.List;

public interface OrdersService {

    Orders findById(String id) throws Exception;

    List<Orders> findAll(int page, int size) throws Exception;
}
