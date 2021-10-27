package cn.edu.jxnu.dao.impl;

import cn.edu.jxnu.dao.ProductDAO;
import cn.edu.jxnu.dao.impl.ImplProdutctDAO;
import cn.edu.jxnu.domain.ProductDomain;
import org.junit.Test;

import java.util.List;

public class ImplProdutctDAOTest {
    private ProductDAO dao = new ImplProdutctDAO();

    @Test
    public void queryProduct() {

        try {
            List<ProductDomain> list = dao.queryProductOrderSaleNum(0, 5);
            System.out.println(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void queryProduct1() {
        try {
            List<ProductDomain> list = dao.queryProductOrderSaleNum1(0, 5);
            System.out.println(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void query() {
        try {
            List<ProductDomain> list = dao.queryProductTypeOrderID("童书",0,5);
            System.out.println(list);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Test
    public void queryProductNumberByType(){
        ProductDAO productDAO = new ImplProdutctDAO();
        System.out.println(productDAO.queryProductNumberByType("童书"));
    }

    @Test
    public void queryAllProductNumber(){
        ProductDAO productDAO = new ImplProdutctDAO();
        System.out.println(productDAO.queryAllProductNumber());
    }
}