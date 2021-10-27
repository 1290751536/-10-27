package cn.edu.jxnu.service.impl;

import cn.edu.jxnu.dao.ProductDAO;
import cn.edu.jxnu.dao.impl.ImplProdutctDAO;
import cn.edu.jxnu.domain.ProductDomain;
import cn.edu.jxnu.service.ProductService;

import java.util.List;

public class ImplProductService implements ProductService {
    private ProductDAO dao = new ImplProdutctDAO();

    public List<ProductDomain> queryProductOrderSaleNum(int index, int pageSize) throws Exception {

        return dao.queryProductOrderSaleNum(index, pageSize);
    }

    public List<ProductDomain> queryProductOrderID(int index, int pageSize) throws Exception {
        return dao.queryProductOrderID(index, pageSize);
    }

    public List<ProductDomain> queryProductOrderRand(int index, int pageSize) throws Exception {
        return dao.queryProductOrderRand(index, pageSize);
    }

    @Override
    public List<ProductDomain> queryProductTypeOrderId(String bookTypeName, int index, int pageSize) throws Exception {
        return dao.queryProductTypeOrderID(bookTypeName, index, pageSize);
    }

    @Override
    public int queryAllProductNumber() {
        return dao.queryAllProductNumber();
    }

    @Override
    public int queryProductNumberByType(String bookTypeName) {
        return dao.queryProductNumberByType(bookTypeName);
    }
}
