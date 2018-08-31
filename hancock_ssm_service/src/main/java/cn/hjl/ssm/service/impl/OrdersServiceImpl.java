package cn.hjl.ssm.service.impl;

import cn.hjl.ssm.dao.OrdersDao;
import cn.hjl.ssm.domain.Orders;
import cn.hjl.ssm.service.OrdersService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class OrdersServiceImpl implements OrdersService {

    @Autowired
    private OrdersDao ordersDao;

    @Override
    public Orders findById(String id) throws Exception{
        return ordersDao.findById(id);
    }

    @Override
    public List<Orders> findAll(int page,int size) throws Exception {
        PageHelper.startPage(page,size);
        return ordersDao.findAll();
    }
}
