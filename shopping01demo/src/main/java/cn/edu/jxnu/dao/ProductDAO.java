package cn.edu.jxnu.dao;


import cn.edu.jxnu.domain.ProductDomain;

import java.util.List;

public interface ProductDAO {
    /**
     * 根据销售量显示记录
     *
     * @param index
     * @param pageSize
     * @return
     * @throws Exception
     */
    public List<ProductDomain> queryProductOrderSaleNum(int index, int pageSize) throws Exception;

    /**
     * 根据ID号显示
     *
     * @param index
     * @param pageSize
     * @return
     * @throws Exception
     */
    public List<ProductDomain> queryProductOrderID(int index, int pageSize) throws Exception;

    /**
     * @param bookTypeName 图书类型
     * @param index
     * @param pageSize
     * @return 对应图书类型的编号降序的pageSize本书构成的List
     * @throws Exception
     */

    public List<ProductDomain> queryProductTypeOrderID(String bookTypeName, int index, int pageSize) throws Exception;

    /**
     * 随机抽取pagesize个商品
     *
     * @param index
     * @param pageSize
     * @return
     * @throws Exception
     */
    public List<ProductDomain> queryProductOrderRand(int index, int pageSize) throws Exception;


    public List<ProductDomain> queryProductOrderSaleNum1(int index, int pageSize) throws Exception;

    public int queryAllProductNumber();

    public int queryProductNumberByType(String bookTypeName);

}
