package cn.edu.jxnu.service;

import cn.edu.jxnu.domain.ProductDomain;

import java.util.List;

public interface ProductService {
    public List<ProductDomain> queryProductOrderSaleNum(int index, int pageSize) throws Exception;

    public List<ProductDomain> queryProductOrderID(int index, int pageSize) throws Exception;

    public List<ProductDomain> queryProductOrderRand(int index, int pageSize) throws Exception;

    public List<ProductDomain> queryProductTypeOrderId(String bookTypeName,int index,int pageSize) throws Exception;

    public int queryAllProductNumber();

    public int queryProductNumberByType(String bookTypeName);

}
