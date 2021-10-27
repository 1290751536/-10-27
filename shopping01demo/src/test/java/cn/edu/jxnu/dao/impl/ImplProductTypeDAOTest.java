package cn.edu.jxnu.dao.impl;

import cn.edu.jxnu.dao.ProductTypeDAO;
import cn.edu.jxnu.dao.impl.ImplProductTypeDAO;
import cn.edu.jxnu.domain.ProductTypeDomain;
import org.junit.Test;

import java.util.List;

public class ImplProductTypeDAOTest {

    @Test
    public void queryProductType() {
        ProductTypeDAO dao=new ImplProductTypeDAO();
        List<ProductTypeDomain> list =dao.queryProductType();
        System.out.println(list);
    }
}