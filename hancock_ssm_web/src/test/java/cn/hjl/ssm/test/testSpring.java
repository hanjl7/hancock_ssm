package cn.hjl.ssm.test;

import cn.hjl.ssm.domain.Product;
import cn.hjl.ssm.service.ProductService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class testSpring {

    @Test
    public void test1() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        ProductService ps = ac.getBean(ProductService.class);
        List<Product> productList = ps.findAll();
        for (Product product : productList) {
            System.out.println(product);
        }

    }
}
