package cn.edu.jxnu.service.impl;

import cn.edu.jxnu.domain.ProductDomain;
import cn.edu.jxnu.service.ProductService;
import cn.edu.jxnu.service.impl.ImplProductService;
import org.junit.Test;

import java.util.List;

public class ImplProductServiceTest {
    ProductService service=new ImplProductService();

    @Test
    public void queryProduct() {
        try {
            List<ProductDomain> list= service.queryProductOrderSaleNum(0,5);
            System.out.println(list);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}