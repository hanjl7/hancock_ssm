package cn.hjl.ssm.service;

import cn.hjl.ssm.domain.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll() throws Exception;

    void save(Product product) throws Exception;
}
